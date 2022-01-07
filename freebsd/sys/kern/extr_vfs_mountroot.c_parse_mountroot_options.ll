; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_parse_mountroot_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_parse_mountroot_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mntarg = type { i32 }

@M_MOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"noro\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mntarg* (%struct.mntarg*, i8*)* @parse_mountroot_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mntarg* @parse_mountroot_options(%struct.mntarg* %0, i8* %1) #0 {
  %3 = alloca %struct.mntarg*, align 8
  %4 = alloca %struct.mntarg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.mntarg* %0, %struct.mntarg** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14, %2
  %21 = load %struct.mntarg*, %struct.mntarg** %4, align 8
  store %struct.mntarg* %21, %struct.mntarg** %3, align 8
  br label %83

22:                                               ; preds = %14
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* @M_MOUNT, align 4
  %25 = call i8* @strdup(i8* %23, i32 %24)
  store i8* %25, i8** %11, align 8
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load %struct.mntarg*, %struct.mntarg** %4, align 8
  store %struct.mntarg* %29, %struct.mntarg** %3, align 8
  br label %83

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %69, %58, %30
  %32 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %32, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %78

34:                                               ; preds = %31
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %78

41:                                               ; preds = %34
  %42 = load i8*, i8** %7, align 8
  %43 = call i8* @strchr(i8* %42, i8 signext 61)
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i8*, i8** %9, align 8
  store i8 0, i8* %47, align 1
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %9, align 8
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i8*, i8** %7, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i8*, i8** %7, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %50
  br label %31

59:                                               ; preds = %54
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* @M_MOUNT, align 4
  %62 = call i8* @strdup(i8* %60, i32 %61)
  store i8* %62, i8** %8, align 8
  store i8* null, i8** %10, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* @M_MOUNT, align 4
  %68 = call i8* @strdup(i8* %66, i32 %67)
  store i8* %68, i8** %10, align 8
  br label %69

69:                                               ; preds = %65, %59
  %70 = load %struct.mntarg*, %struct.mntarg** %4, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = icmp ne i8* %73, null
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 -1, i32 0
  %77 = call %struct.mntarg* @mount_arg(%struct.mntarg* %70, i8* %71, i8* %72, i32 %76)
  store %struct.mntarg* %77, %struct.mntarg** %4, align 8
  br label %31

78:                                               ; preds = %40, %31
  %79 = load i8*, i8** %11, align 8
  %80 = load i32, i32* @M_MOUNT, align 4
  %81 = call i32 @free(i8* %79, i32 %80)
  %82 = load %struct.mntarg*, %struct.mntarg** %4, align 8
  store %struct.mntarg* %82, %struct.mntarg** %3, align 8
  br label %83

83:                                               ; preds = %78, %28, %20
  %84 = load %struct.mntarg*, %struct.mntarg** %3, align 8
  ret %struct.mntarg* %84
}

declare dso_local i8* @strdup(i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.mntarg* @mount_arg(%struct.mntarg*, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
