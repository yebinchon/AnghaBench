; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sysctl_search_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sysctl_search_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_oid = type { i32, i32 }

@CTL_MAXNAME = common dso_local global i32 0, align 4
@sysctl__children = common dso_local global i32 0, align 4
@oid_link = common dso_local global i32 0, align 4
@CTLTYPE = common dso_local global i32 0, align 4
@CTLTYPE_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysctl_oid**, %struct.sysctl_oid*)* @sysctl_search_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_search_oid(%struct.sysctl_oid** %0, %struct.sysctl_oid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysctl_oid**, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca i32, align 4
  store %struct.sysctl_oid** %0, %struct.sysctl_oid*** %4, align 8
  store %struct.sysctl_oid* %1, %struct.sysctl_oid** %5, align 8
  %7 = call i32 (...) @SYSCTL_ASSERT_LOCKED()
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %102, %99, %84, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @CTL_MAXNAME, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i1 [ false, %8 ], [ %14, %12 ]
  br i1 %16, label %17, label %103

17:                                               ; preds = %15
  %18 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.sysctl_oid*, %struct.sysctl_oid** %18, i64 %20
  %22 = load %struct.sysctl_oid*, %struct.sysctl_oid** %21, align 8
  %23 = icmp eq %struct.sysctl_oid* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = call %struct.sysctl_oid* @SLIST_FIRST(i32* @sysctl__children)
  %29 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.sysctl_oid*, %struct.sysctl_oid** %29, i64 %31
  store %struct.sysctl_oid* %28, %struct.sysctl_oid** %32, align 8
  br label %66

33:                                               ; preds = %24, %17
  %34 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.sysctl_oid*, %struct.sysctl_oid** %34, i64 %36
  %38 = load %struct.sysctl_oid*, %struct.sysctl_oid** %37, align 8
  %39 = icmp eq %struct.sysctl_oid* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.sysctl_oid*, %struct.sysctl_oid** %41, i64 %44
  %46 = load %struct.sysctl_oid*, %struct.sysctl_oid** %45, align 8
  %47 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %46, i32 0, i32 1
  %48 = call %struct.sysctl_oid* @SLIST_FIRST(i32* %47)
  %49 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sysctl_oid*, %struct.sysctl_oid** %49, i64 %51
  store %struct.sysctl_oid* %48, %struct.sysctl_oid** %52, align 8
  br label %65

53:                                               ; preds = %33
  %54 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.sysctl_oid*, %struct.sysctl_oid** %54, i64 %56
  %58 = load %struct.sysctl_oid*, %struct.sysctl_oid** %57, align 8
  %59 = load i32, i32* @oid_link, align 4
  %60 = call %struct.sysctl_oid* @SLIST_NEXT(%struct.sysctl_oid* %58, i32 %59)
  %61 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.sysctl_oid*, %struct.sysctl_oid** %61, i64 %63
  store %struct.sysctl_oid* %60, %struct.sysctl_oid** %64, align 8
  br label %65

65:                                               ; preds = %53, %40
  br label %66

66:                                               ; preds = %65, %27
  %67 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.sysctl_oid*, %struct.sysctl_oid** %67, i64 %69
  %71 = load %struct.sysctl_oid*, %struct.sysctl_oid** %70, align 8
  %72 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %73 = icmp eq %struct.sysctl_oid* %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %104

77:                                               ; preds = %66
  %78 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %4, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.sysctl_oid*, %struct.sysctl_oid** %78, i64 %80
  %82 = load %struct.sysctl_oid*, %struct.sysctl_oid** %81, align 8
  %83 = icmp eq %struct.sysctl_oid* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %6, align 4
  br label %8

87:                                               ; preds = %77
  %88 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.sysctl_oid*, %struct.sysctl_oid** %88, i64 %90
  %92 = load %struct.sysctl_oid*, %struct.sysctl_oid** %91, align 8
  %93 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @CTLTYPE, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* @CTLTYPE_NODE, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %87
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %8

102:                                              ; preds = %87
  br label %8

103:                                              ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %74
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @SYSCTL_ASSERT_LOCKED(...) #1

declare dso_local %struct.sysctl_oid* @SLIST_FIRST(i32*) #1

declare dso_local %struct.sysctl_oid* @SLIST_NEXT(%struct.sysctl_oid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
