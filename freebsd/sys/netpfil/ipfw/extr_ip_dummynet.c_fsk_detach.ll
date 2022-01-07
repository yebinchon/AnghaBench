; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_fsk_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_fsk_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.dn_fsk_head, i32 }
%struct.dn_fsk_head = type { i32 }
%struct.dn_fsk = type { %struct.TYPE_7__*, %struct.dn_fsk*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.dn_fsk_head }
%struct.TYPE_6__ = type { i32 (%struct.dn_fsk*)* }
%struct.TYPE_5__ = type { i32, i32 }

@DN_DELETE_FS = common dso_local global i32 0, align 4
@DN_DESTROY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"fs %d from sched %d flags %s %s %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"DEL_FS\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"DEL\00", align 1
@DN_DETACH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"DET\00", align 1
@dn_cfg = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@dn_fsk = common dso_local global i32 0, align 4
@sch_chain = common dso_local global i32 0, align 4
@M_DUMMYNET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dn_fsk*, i32)* @fsk_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsk_detach(%struct.dn_fsk* %0, i32 %1) #0 {
  %3 = alloca %struct.dn_fsk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dn_fsk_head*, align 8
  store %struct.dn_fsk* %0, %struct.dn_fsk** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @DN_DELETE_FS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @DN_DESTROY, align 4
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %16 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %20 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @DN_DELETE_FS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @DN_DESTROY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @DN_DETACH, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %41 = call i32 @ND(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %22, i8* %28, i8* %34, i8* %40)
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @DN_DETACH, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %14
  %47 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %48 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = icmp ne %struct.TYPE_7__* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %53 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  br label %57

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %51
  %58 = phi %struct.dn_fsk_head* [ %55, %51 ], [ getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dn_cfg, i32 0, i32 0), %56 ]
  store %struct.dn_fsk_head* %58, %struct.dn_fsk_head** %5, align 8
  %59 = load %struct.dn_fsk_head*, %struct.dn_fsk_head** %5, align 8
  %60 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %61 = load i32, i32* @dn_fsk, align 4
  %62 = load i32, i32* @sch_chain, align 4
  %63 = call i32 @SLIST_REMOVE(%struct.dn_fsk_head* %59, %struct.dn_fsk* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %14
  %65 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %66 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %65, i32 0, i32 1
  %67 = load %struct.dn_fsk*, %struct.dn_fsk** %66, align 8
  %68 = icmp ne %struct.dn_fsk* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %71 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %70, i32 0, i32 1
  %72 = load %struct.dn_fsk*, %struct.dn_fsk** %71, align 8
  %73 = load i32, i32* @M_DUMMYNET, align 4
  %74 = call i32 @free(%struct.dn_fsk* %72, i32 %73)
  br label %75

75:                                               ; preds = %69, %64
  %76 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %77 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %76, i32 0, i32 1
  store %struct.dn_fsk* null, %struct.dn_fsk** %77, align 8
  %78 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @qht_delete(%struct.dn_fsk* %78, i32 %79)
  %81 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %82 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = icmp ne %struct.TYPE_7__* %83, null
  br i1 %84, label %85, label %104

85:                                               ; preds = %75
  %86 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %87 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32 (%struct.dn_fsk*)*, i32 (%struct.dn_fsk*)** %91, align 8
  %93 = icmp ne i32 (%struct.dn_fsk*)* %92, null
  br i1 %93, label %94, label %104

94:                                               ; preds = %85
  %95 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %96 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32 (%struct.dn_fsk*)*, i32 (%struct.dn_fsk*)** %100, align 8
  %102 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %103 = call i32 %101(%struct.dn_fsk* %102)
  br label %104

104:                                              ; preds = %94, %85, %75
  %105 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %106 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %105, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %106, align 8
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @DN_DELETE_FS, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %104
  %112 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %113 = call i32 @bzero(%struct.dn_fsk* %112, i32 24)
  %114 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %115 = load i32, i32* @M_DUMMYNET, align 4
  %116 = call i32 @free(%struct.dn_fsk* %114, i32 %115)
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dn_cfg, i32 0, i32 1), align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dn_cfg, i32 0, i32 1), align 4
  br label %123

119:                                              ; preds = %104
  %120 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %121 = load i32, i32* @sch_chain, align 4
  %122 = call i32 @SLIST_INSERT_HEAD(%struct.dn_fsk_head* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dn_cfg, i32 0, i32 0), %struct.dn_fsk* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %111
  ret void
}

declare dso_local i32 @ND(i8*, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @SLIST_REMOVE(%struct.dn_fsk_head*, %struct.dn_fsk*, i32, i32) #1

declare dso_local i32 @free(%struct.dn_fsk*, i32) #1

declare dso_local i32 @qht_delete(%struct.dn_fsk*, i32) #1

declare dso_local i32 @bzero(%struct.dn_fsk*, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(%struct.dn_fsk_head*, %struct.dn_fsk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
