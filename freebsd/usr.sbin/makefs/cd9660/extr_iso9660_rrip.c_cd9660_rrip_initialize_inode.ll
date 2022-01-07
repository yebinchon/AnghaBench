; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_iso9660_rrip.c_cd9660_rrip_initialize_inode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_iso9660_rrip.c_cd9660_rrip_initialize_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ISO_SUSP_ATTRIBUTES = type { i32 }

@SUSP_TYPE_RRIP = common dso_local global i32 0, align 4
@SUSP_ENTRY_RRIP_PX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"PX\00", align 1
@SUSP_LOC_ENTRY = common dso_local global i32 0, align 4
@rr_ll = common dso_local global i32 0, align 4
@SUSP_ENTRY_RRIP_TF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"TF\00", align 1
@SUSP_ENTRY_RRIP_PN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"PN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @cd9660_rrip_initialize_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cd9660_rrip_initialize_inode(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.ISO_SUSP_ATTRIBUTES*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %7 = icmp ne %struct.TYPE_12__* %6, null
  br i1 %7, label %8, label %114

8:                                                ; preds = %1
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = icmp ne %struct.TYPE_10__* %13, null
  br i1 %14, label %15, label %114

15:                                               ; preds = %8
  %16 = load i32, i32* @SUSP_TYPE_RRIP, align 4
  %17 = load i32, i32* @SUSP_ENTRY_RRIP_PX, align 4
  %18 = load i32, i32* @SUSP_LOC_ENTRY, align 4
  %19 = call %struct.ISO_SUSP_ATTRIBUTES* @cd9660node_susp_create_node(i32 %16, i32 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %18)
  store %struct.ISO_SUSP_ATTRIBUTES* %19, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %20 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = call i32 @cd9660node_rrip_px(%struct.ISO_SUSP_ATTRIBUTES* %20, %struct.TYPE_12__* %23)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %28 = load i32, i32* @rr_ll, align 4
  %29 = call i32 @TAILQ_INSERT_TAIL(i32* %26, %struct.ISO_SUSP_ATTRIBUTES* %27, i32 %28)
  %30 = load i32, i32* @SUSP_TYPE_RRIP, align 4
  %31 = load i32, i32* @SUSP_ENTRY_RRIP_TF, align 4
  %32 = load i32, i32* @SUSP_LOC_ENTRY, align 4
  %33 = call %struct.ISO_SUSP_ATTRIBUTES* @cd9660node_susp_create_node(i32 %30, i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  store %struct.ISO_SUSP_ATTRIBUTES* %33, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %34 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = call i32 @cd9660node_rrip_tf(%struct.ISO_SUSP_ATTRIBUTES* %34, %struct.TYPE_12__* %37)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %42 = load i32, i32* @rr_ll, align 4
  %43 = call i32 @TAILQ_INSERT_TAIL(i32* %40, %struct.ISO_SUSP_ATTRIBUTES* %41, i32 %42)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = call i64 @TAILQ_EMPTY(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %15
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = icmp ne %struct.TYPE_10__* %53, null
  br i1 %54, label %55, label %69

55:                                               ; preds = %48
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @S_ISLNK(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %68 = call i32 @cd9660_createSL(%struct.TYPE_11__* %67)
  br label %69

69:                                               ; preds = %66, %55, %48, %15
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = icmp ne %struct.TYPE_10__* %74, null
  br i1 %75, label %76, label %113

76:                                               ; preds = %69
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @S_ISCHR(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %76
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @S_ISBLK(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %87, %76
  %99 = load i32, i32* @SUSP_TYPE_RRIP, align 4
  %100 = load i32, i32* @SUSP_ENTRY_RRIP_PN, align 4
  %101 = load i32, i32* @SUSP_LOC_ENTRY, align 4
  %102 = call %struct.ISO_SUSP_ATTRIBUTES* @cd9660node_susp_create_node(i32 %99, i32 %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  store %struct.ISO_SUSP_ATTRIBUTES* %102, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %103 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = call i32 @cd9660node_rrip_pn(%struct.ISO_SUSP_ATTRIBUTES* %103, %struct.TYPE_12__* %106)
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %111 = load i32, i32* @rr_ll, align 4
  %112 = call i32 @TAILQ_INSERT_TAIL(i32* %109, %struct.ISO_SUSP_ATTRIBUTES* %110, i32 %111)
  br label %113

113:                                              ; preds = %98, %87, %69
  br label %114

114:                                              ; preds = %113, %8, %1
  ret void
}

declare dso_local %struct.ISO_SUSP_ATTRIBUTES* @cd9660node_susp_create_node(i32, i32, i8*, i32) #1

declare dso_local i32 @cd9660node_rrip_px(%struct.ISO_SUSP_ATTRIBUTES*, %struct.TYPE_12__*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ISO_SUSP_ATTRIBUTES*, i32) #1

declare dso_local i32 @cd9660node_rrip_tf(%struct.ISO_SUSP_ATTRIBUTES*, %struct.TYPE_12__*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @cd9660_createSL(%struct.TYPE_11__*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @cd9660node_rrip_pn(%struct.ISO_SUSP_ATTRIBUTES*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
