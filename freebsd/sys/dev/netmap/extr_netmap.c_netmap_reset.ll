; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_slot = type { i32 }
%struct.netmap_adapter = type { i64, i64, i32, %struct.netmap_kring**, %struct.netmap_kring** }
%struct.netmap_kring = type { i64, i32, i32, i32, i32, %struct.TYPE_2__*, i32 (%struct.netmap_kring*, i32)*, i64 }
%struct.TYPE_2__ = type { %struct.netmap_slot* }

@.str = private unnamed_addr constant [36 x i8] c"interface not in native netmap mode\00", align 1
@NR_TX = common dso_local global i32 0, align 4
@NKR_NETMAP_OFF = common dso_local global i64 0, align 8
@netmap_debug = common dso_local global i32 0, align 4
@NM_DEBUG_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s %s%d hwofs %d -> %d, hwtail %d -> %d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@NKR_NETMAP_ON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.netmap_slot* @netmap_reset(%struct.netmap_adapter* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.netmap_slot*, align 8
  %6 = alloca %struct.netmap_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.netmap_kring*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.netmap_adapter* %0, %struct.netmap_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %14 = call i32 @nm_native_on(%struct.netmap_adapter* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = call i32 @nm_prdis(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.netmap_slot* null, %struct.netmap_slot** %5, align 8
  br label %173

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @NR_TX, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %18
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store %struct.netmap_slot* null, %struct.netmap_slot** %5, align 8
  br label %173

29:                                               ; preds = %22
  %30 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %31 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %30, i32 0, i32 4
  %32 = load %struct.netmap_kring**, %struct.netmap_kring*** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.netmap_kring*, %struct.netmap_kring** %32, i64 %33
  %35 = load %struct.netmap_kring*, %struct.netmap_kring** %34, align 8
  store %struct.netmap_kring* %35, %struct.netmap_kring** %10, align 8
  %36 = load %struct.netmap_kring*, %struct.netmap_kring** %10, align 8
  %37 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NKR_NETMAP_OFF, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load i64, i64* @NKR_NETMAP_OFF, align 8
  %43 = load %struct.netmap_kring*, %struct.netmap_kring** %10, align 8
  %44 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %43, i32 0, i32 7
  store i64 %42, i64* %44, align 8
  store %struct.netmap_slot* null, %struct.netmap_slot** %5, align 8
  br label %173

45:                                               ; preds = %29
  %46 = load %struct.netmap_kring*, %struct.netmap_kring** %10, align 8
  %47 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %9, align 8
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %11, align 4
  br label %84

53:                                               ; preds = %18
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %56 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp uge i64 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store %struct.netmap_slot* null, %struct.netmap_slot** %5, align 8
  br label %173

60:                                               ; preds = %53
  %61 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %62 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %61, i32 0, i32 3
  %63 = load %struct.netmap_kring**, %struct.netmap_kring*** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds %struct.netmap_kring*, %struct.netmap_kring** %63, i64 %64
  %66 = load %struct.netmap_kring*, %struct.netmap_kring** %65, align 8
  store %struct.netmap_kring* %66, %struct.netmap_kring** %10, align 8
  %67 = load %struct.netmap_kring*, %struct.netmap_kring** %10, align 8
  %68 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NKR_NETMAP_OFF, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %60
  %73 = load i64, i64* @NKR_NETMAP_OFF, align 8
  %74 = load %struct.netmap_kring*, %struct.netmap_kring** %10, align 8
  %75 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %74, i32 0, i32 7
  store i64 %73, i64* %75, align 8
  store %struct.netmap_slot* null, %struct.netmap_slot** %5, align 8
  br label %173

76:                                               ; preds = %60
  %77 = load %struct.netmap_kring*, %struct.netmap_kring** %10, align 8
  %78 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %9, align 8
  %82 = sub i64 %80, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %76, %45
  %85 = load %struct.netmap_kring*, %struct.netmap_kring** %10, align 8
  %86 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  %95 = load i32, i32* %11, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %92, %84
  %98 = load i32, i32* @netmap_debug, align 4
  %99 = load i32, i32* @NM_DEBUG_ON, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %131

102:                                              ; preds = %97
  %103 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %104 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @NR_TX, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %111 = load i64, i64* %8, align 8
  %112 = load %struct.netmap_kring*, %struct.netmap_kring** %10, align 8
  %113 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.netmap_kring*, %struct.netmap_kring** %10, align 8
  %117 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @NR_TX, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %102
  %123 = load i32, i32* %12, align 4
  br label %128

124:                                              ; preds = %102
  %125 = load %struct.netmap_kring*, %struct.netmap_kring** %10, align 8
  %126 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  br label %128

128:                                              ; preds = %124, %122
  %129 = phi i32 [ %123, %122 ], [ %127, %124 ]
  %130 = call i32 @nm_prinf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %105, i8* %110, i64 %111, i32 %114, i32 %115, i32 %118, i32 %129)
  br label %131

131:                                              ; preds = %128, %97
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.netmap_kring*, %struct.netmap_kring** %10, align 8
  %134 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @NR_TX, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %159

138:                                              ; preds = %131
  %139 = load %struct.netmap_kring*, %struct.netmap_kring** %10, align 8
  %140 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %141, %142
  %144 = load %struct.netmap_kring*, %struct.netmap_kring** %10, align 8
  %145 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 4
  %146 = load %struct.netmap_kring*, %struct.netmap_kring** %10, align 8
  %147 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %12, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %138
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, 1
  %154 = load %struct.netmap_kring*, %struct.netmap_kring** %10, align 8
  %155 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = sub nsw i32 %156, %153
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %151, %138
  br label %159

159:                                              ; preds = %158, %131
  %160 = load i64, i64* @NKR_NETMAP_ON, align 8
  %161 = load %struct.netmap_kring*, %struct.netmap_kring** %10, align 8
  %162 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %161, i32 0, i32 7
  store i64 %160, i64* %162, align 8
  %163 = load %struct.netmap_kring*, %struct.netmap_kring** %10, align 8
  %164 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %163, i32 0, i32 6
  %165 = load i32 (%struct.netmap_kring*, i32)*, i32 (%struct.netmap_kring*, i32)** %164, align 8
  %166 = load %struct.netmap_kring*, %struct.netmap_kring** %10, align 8
  %167 = call i32 %165(%struct.netmap_kring* %166, i32 0)
  %168 = load %struct.netmap_kring*, %struct.netmap_kring** %10, align 8
  %169 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %168, i32 0, i32 5
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load %struct.netmap_slot*, %struct.netmap_slot** %171, align 8
  store %struct.netmap_slot* %172, %struct.netmap_slot** %5, align 8
  br label %173

173:                                              ; preds = %159, %72, %59, %41, %28, %16
  %174 = load %struct.netmap_slot*, %struct.netmap_slot** %5, align 8
  ret %struct.netmap_slot* %174
}

declare dso_local i32 @nm_native_on(%struct.netmap_adapter*) #1

declare dso_local i32 @nm_prdis(i8*) #1

declare dso_local i32 @nm_prinf(i8*, i32, i8*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
