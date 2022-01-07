; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_name2oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_name2oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_oid = type { i32, i64, i32, i32 }

@sysctl__children = common dso_local global %struct.sysctl_oid_list zeroinitializer, align 4
@CTL_MAXNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@oid_link = common dso_local global i32 0, align 4
@CTLTYPE = common dso_local global i32 0, align 4
@CTLTYPE_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, %struct.sysctl_oid**)* @name2oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @name2oid(i8* %0, i32* %1, i32* %2, %struct.sysctl_oid** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sysctl_oid**, align 8
  %10 = alloca %struct.sysctl_oid*, align 8
  %11 = alloca %struct.sysctl_oid_list*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.sysctl_oid** %3, %struct.sysctl_oid*** %9, align 8
  store %struct.sysctl_oid_list* @sysctl__children, %struct.sysctl_oid_list** %11, align 8
  %13 = call i32 (...) @SYSCTL_ASSERT_LOCKED()
  %14 = load i32*, i32** %8, align 8
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %80, %4
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CTL_MAXNAME, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %83

20:                                               ; preds = %15
  %21 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %12, align 8
  %22 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %11, align 8
  %23 = call %struct.sysctl_oid* @SLIST_FIRST(%struct.sysctl_oid_list* %22)
  store %struct.sysctl_oid* %23, %struct.sysctl_oid** %10, align 8
  br label %24

24:                                               ; preds = %38, %20
  %25 = load %struct.sysctl_oid*, %struct.sysctl_oid** %10, align 8
  %26 = icmp eq %struct.sysctl_oid* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @ENOENT, align 4
  store i32 %28, i32* %5, align 4
  br label %85

29:                                               ; preds = %24
  %30 = load i8*, i8** %12, align 8
  %31 = load %struct.sysctl_oid*, %struct.sysctl_oid** %10, align 8
  %32 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @strcmp(i8* %30, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %42

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.sysctl_oid*, %struct.sysctl_oid** %10, align 8
  %40 = load i32, i32* @oid_link, align 4
  %41 = call %struct.sysctl_oid* @SLIST_NEXT(%struct.sysctl_oid* %39, i32 %40)
  store %struct.sysctl_oid* %41, %struct.sysctl_oid** %10, align 8
  br label %24

42:                                               ; preds = %36
  %43 = load %struct.sysctl_oid*, %struct.sysctl_oid** %10, align 8
  %44 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %42
  %54 = load i8*, i8** %6, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53, %42
  %59 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %9, align 8
  %60 = icmp ne %struct.sysctl_oid** %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.sysctl_oid*, %struct.sysctl_oid** %10, align 8
  %63 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %9, align 8
  store %struct.sysctl_oid* %62, %struct.sysctl_oid** %63, align 8
  br label %64

64:                                               ; preds = %61, %58
  store i32 0, i32* %5, align 4
  br label %85

65:                                               ; preds = %53
  %66 = load %struct.sysctl_oid*, %struct.sysctl_oid** %10, align 8
  %67 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @CTLTYPE, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @CTLTYPE_NODE, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %83

74:                                               ; preds = %65
  %75 = load %struct.sysctl_oid*, %struct.sysctl_oid** %10, align 8
  %76 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %83

80:                                               ; preds = %74
  %81 = load %struct.sysctl_oid*, %struct.sysctl_oid** %10, align 8
  %82 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %81)
  store %struct.sysctl_oid_list* %82, %struct.sysctl_oid_list** %11, align 8
  br label %15

83:                                               ; preds = %79, %73, %15
  %84 = load i32, i32* @ENOENT, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %83, %64, %27
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @SYSCTL_ASSERT_LOCKED(...) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local %struct.sysctl_oid* @SLIST_FIRST(%struct.sysctl_oid_list*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.sysctl_oid* @SLIST_NEXT(%struct.sysctl_oid*, i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
