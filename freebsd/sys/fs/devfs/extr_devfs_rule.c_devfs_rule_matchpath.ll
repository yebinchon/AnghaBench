; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_rule.c_devfs_rule_matchpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_rule.c_devfs_rule_matchpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfs_krule = type { %struct.devfs_rule }
%struct.devfs_rule = type { i32 }
%struct.devfs_mount = type { %struct.devfs_dirent* }
%struct.devfs_dirent = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.cdev = type { i8* }

@DT_LNK = common dso_local global i64 0, align 8
@DT_DIR = common dso_local global i64 0, align 8
@DE_DOT = common dso_local global i32 0, align 4
@DE_DOTDOT = common dso_local global i32 0, align 4
@SPECNAMELEN = common dso_local global i64 0, align 8
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"devfs_rule_matchpath: NULL pname\00", align 1
@FNM_PATHNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devfs_krule*, %struct.devfs_mount*, %struct.devfs_dirent*)* @devfs_rule_matchpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_rule_matchpath(%struct.devfs_krule* %0, %struct.devfs_mount* %1, %struct.devfs_dirent* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devfs_krule*, align 8
  %6 = alloca %struct.devfs_mount*, align 8
  %7 = alloca %struct.devfs_dirent*, align 8
  %8 = alloca %struct.devfs_rule*, align 8
  %9 = alloca %struct.cdev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.devfs_krule* %0, %struct.devfs_krule** %5, align 8
  store %struct.devfs_mount* %1, %struct.devfs_mount** %6, align 8
  store %struct.devfs_dirent* %2, %struct.devfs_dirent** %7, align 8
  %13 = load %struct.devfs_krule*, %struct.devfs_krule** %5, align 8
  %14 = getelementptr inbounds %struct.devfs_krule, %struct.devfs_krule* %13, i32 0, i32 0
  store %struct.devfs_rule* %14, %struct.devfs_rule** %8, align 8
  store i8* null, i8** %12, align 8
  %15 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %16 = call %struct.cdev* @devfs_rule_getdev(%struct.devfs_dirent* %15)
  store %struct.cdev* %16, %struct.cdev** %9, align 8
  %17 = load %struct.cdev*, %struct.cdev** %9, align 8
  %18 = icmp ne %struct.cdev* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.cdev*, %struct.cdev** %9, align 8
  %21 = getelementptr inbounds %struct.cdev, %struct.cdev* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %11, align 8
  br label %66

23:                                               ; preds = %3
  %24 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %25 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DT_LNK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %54, label %31

31:                                               ; preds = %23
  %32 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %33 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DT_DIR, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %31
  %40 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %41 = load %struct.devfs_mount*, %struct.devfs_mount** %6, align 8
  %42 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %41, i32 0, i32 0
  %43 = load %struct.devfs_dirent*, %struct.devfs_dirent** %42, align 8
  %44 = icmp ne %struct.devfs_dirent* %40, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %39
  %46 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %47 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @DE_DOT, align 4
  %50 = load i32, i32* @DE_DOTDOT, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %45, %23
  %55 = load i64, i64* @SPECNAMELEN, align 8
  %56 = add nsw i64 %55, 1
  %57 = load i32, i32* @M_TEMP, align 4
  %58 = load i32, i32* @M_WAITOK, align 4
  %59 = call i8* @malloc(i64 %56, i32 %57, i32 %58)
  store i8* %59, i8** %12, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load %struct.devfs_mount*, %struct.devfs_mount** %6, align 8
  %62 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %63 = call i8* @devfs_fqpn(i8* %60, %struct.devfs_mount* %61, %struct.devfs_dirent* %62, i32* null)
  store i8* %63, i8** %11, align 8
  br label %65

64:                                               ; preds = %45, %39, %31
  store i32 0, i32* %4, align 4
  br label %83

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %19
  %67 = load i8*, i8** %11, align 8
  %68 = icmp ne i8* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i32 @KASSERT(i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.devfs_rule*, %struct.devfs_rule** %8, align 8
  %72 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %11, align 8
  %75 = load i32, i32* @FNM_PATHNAME, align 4
  %76 = call i64 @fnmatch(i32 %73, i8* %74, i32 %75)
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %10, align 4
  %79 = load i8*, i8** %12, align 8
  %80 = load i32, i32* @M_TEMP, align 4
  %81 = call i32 @free(i8* %79, i32 %80)
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %66, %64
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.cdev* @devfs_rule_getdev(%struct.devfs_dirent*) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i8* @devfs_fqpn(i8*, %struct.devfs_mount*, %struct.devfs_dirent*, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @fnmatch(i32, i8*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
