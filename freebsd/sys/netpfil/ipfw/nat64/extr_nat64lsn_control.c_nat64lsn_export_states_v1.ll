; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn_control.c_nat64lsn_export_states_v1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn_control.c_nat64lsn_export_states_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat64lsn_cfg = type { i32 }
%union.nat64lsn_pgidx = type { i64 }
%struct.nat64lsn_pg = type { i32, %struct.TYPE_7__**, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.nat64lsn_state* }
%struct.nat64lsn_state = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.nat64lsn_state* }
%struct.sockopt_data = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i64, i32, i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DP_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"EXPORT PG 0x%16jx, count %d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nat64lsn_cfg*, %union.nat64lsn_pgidx*, %struct.nat64lsn_pg*, %struct.sockopt_data*, i32*)* @nat64lsn_export_states_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat64lsn_export_states_v1(%struct.nat64lsn_cfg* %0, %union.nat64lsn_pgidx* %1, %struct.nat64lsn_pg* %2, %struct.sockopt_data* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nat64lsn_cfg*, align 8
  %8 = alloca %union.nat64lsn_pgidx*, align 8
  %9 = alloca %struct.nat64lsn_pg*, align 8
  %10 = alloca %struct.sockopt_data*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.nat64lsn_state*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nat64lsn_cfg* %0, %struct.nat64lsn_cfg** %7, align 8
  store %union.nat64lsn_pgidx* %1, %union.nat64lsn_pgidx** %8, align 8
  store %struct.nat64lsn_pg* %2, %struct.nat64lsn_pg** %9, align 8
  store %struct.sockopt_data* %3, %struct.sockopt_data** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %union.nat64lsn_pgidx*, %union.nat64lsn_pgidx** %8, align 8
  %18 = bitcast %union.nat64lsn_pgidx* %17 to i32*
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %9, align 8
  %21 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  %24 = icmp sgt i32 %19, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %6, align 4
  br label %155

27:                                               ; preds = %5
  %28 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %9, align 8
  %29 = load %union.nat64lsn_pgidx*, %union.nat64lsn_pgidx** %8, align 8
  %30 = bitcast %union.nat64lsn_pgidx* %29 to i32*
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @FREEMASK_COPY(%struct.nat64lsn_pg* %28, i32 %31, i32 %32)
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @bitcount64(i32 %34)
  %36 = sub nsw i32 64, %35
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %155

40:                                               ; preds = %27
  %41 = load i32, i32* @DP_STATE, align 4
  %42 = load %union.nat64lsn_pgidx*, %union.nat64lsn_pgidx** %8, align 8
  %43 = bitcast %union.nat64lsn_pgidx* %42 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @DPRINTF(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load %struct.sockopt_data*, %struct.sockopt_data** %10, align 8
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 40
  %52 = trunc i64 %51 to i32
  %53 = call i64 @ipfw_get_sopt_space(%struct.sockopt_data* %48, i32 %52)
  %54 = inttoptr i64 %53 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %54, %struct.TYPE_10__** %12, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %56 = icmp eq %struct.TYPE_10__* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %40
  %58 = load i32, i32* @ENOMEM, align 4
  store i32 %58, i32* %6, align 4
  br label %155

59:                                               ; preds = %40
  store i32 0, i32* %15, align 4
  br label %60

60:                                               ; preds = %149, %59
  %61 = load i32, i32* %15, align 4
  %62 = icmp slt i32 %61, 64
  br i1 %62, label %63, label %152

63:                                               ; preds = %60
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %15, align 4
  %66 = call i64 @ISSET64(i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %149

69:                                               ; preds = %63
  %70 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %9, align 8
  %71 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %9, align 8
  %76 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %75, i32 0, i32 2
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %79, i64 %81
  br label %98

83:                                               ; preds = %69
  %84 = load %struct.nat64lsn_pg*, %struct.nat64lsn_pg** %9, align 8
  %85 = getelementptr inbounds %struct.nat64lsn_pg, %struct.nat64lsn_pg* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %85, align 8
  %87 = load %union.nat64lsn_pgidx*, %union.nat64lsn_pgidx** %8, align 8
  %88 = bitcast %union.nat64lsn_pgidx* %87 to i32*
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %86, i64 %90
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %93, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %94, i64 %96
  br label %98

98:                                               ; preds = %83, %74
  %99 = phi %struct.nat64lsn_state* [ %82, %74 ], [ %97, %83 ]
  store %struct.nat64lsn_state* %99, %struct.nat64lsn_state** %13, align 8
  %100 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %13, align 8
  %101 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %100, i32 0, i32 7
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 7
  store i32 %104, i32* %106, align 8
  %107 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %13, align 8
  %108 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @htonl(i32 %109)
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  %114 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %13, align 8
  %115 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 8
  %119 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %13, align 8
  %120 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 4
  %124 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %13, align 8
  %125 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 8
  %129 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %13, align 8
  %130 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = and i32 %131, 7
  %133 = sext i32 %132 to i64
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  store i64 %133, i64* %135, align 8
  %136 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %13, align 8
  %137 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %13, align 8
  %142 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @GET_AGE(i32 %143)
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 1
  store %struct.TYPE_10__* %148, %struct.TYPE_10__** %12, align 8
  br label %149

149:                                              ; preds = %98, %68
  %150 = load i32, i32* %15, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %15, align 4
  br label %60

152:                                              ; preds = %60
  %153 = load i32, i32* %16, align 4
  %154 = load i32*, i32** %11, align 8
  store i32 %153, i32* %154, align 4
  store i32 0, i32* %6, align 4
  br label %155

155:                                              ; preds = %152, %57, %39, %25
  %156 = load i32, i32* %6, align 4
  ret i32 %156
}

declare dso_local i32 @FREEMASK_COPY(%struct.nat64lsn_pg*, i32, i32) #1

declare dso_local i32 @bitcount64(i32) #1

declare dso_local i32 @DPRINTF(i32, i8*, i32, i32) #1

declare dso_local i64 @ipfw_get_sopt_space(%struct.sockopt_data*, i32) #1

declare dso_local i64 @ISSET64(i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @GET_AGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
