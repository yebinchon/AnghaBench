; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_devfs_create_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_devfs_create_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.mount = type { i32 }
%struct.cdev = type { i32 }
%struct.devfs_dirent = type { i32 }
%struct.label = type { i32 }
%struct.mac_biba = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"fd/\00", align 1
@MAC_BIBA_TYPE_EQUAL = common dso_local global i32 0, align 4
@ptys_equal = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"ttyp\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"pts/\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ptyp\00", align 1
@MAC_BIBA_TYPE_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucred*, %struct.mount*, %struct.cdev*, %struct.devfs_dirent*, %struct.label*)* @biba_devfs_create_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @biba_devfs_create_device(%struct.ucred* %0, %struct.mount* %1, %struct.cdev* %2, %struct.devfs_dirent* %3, %struct.label* %4) #0 {
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.mount*, align 8
  %8 = alloca %struct.cdev*, align 8
  %9 = alloca %struct.devfs_dirent*, align 8
  %10 = alloca %struct.label*, align 8
  %11 = alloca %struct.mac_biba*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %6, align 8
  store %struct.mount* %1, %struct.mount** %7, align 8
  store %struct.cdev* %2, %struct.cdev** %8, align 8
  store %struct.devfs_dirent* %3, %struct.devfs_dirent** %9, align 8
  store %struct.label* %4, %struct.label** %10, align 8
  %14 = load %struct.label*, %struct.label** %10, align 8
  %15 = call %struct.mac_biba* @SLOT(%struct.label* %14)
  store %struct.mac_biba* %15, %struct.mac_biba** %11, align 8
  %16 = load %struct.cdev*, %struct.cdev** %8, align 8
  %17 = call i8* @devtoname(%struct.cdev* %16)
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %5
  %22 = load i8*, i8** %12, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %12, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %12, align 8
  %31 = call i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %32 = call i64 @strncmp(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %25, %21, %5
  %35 = load i32, i32* @MAC_BIBA_TYPE_EQUAL, align 4
  store i32 %35, i32* %13, align 4
  br label %59

36:                                               ; preds = %29
  %37 = load i64, i64* @ptys_equal, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load i8*, i8** %12, align 8
  %41 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %42 = call i64 @strncmp(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %12, align 8
  %46 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %47 = call i64 @strncmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** %12, align 8
  %51 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %52 = call i64 @strncmp(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49, %44, %39
  %55 = load i32, i32* @MAC_BIBA_TYPE_EQUAL, align 4
  store i32 %55, i32* %13, align 4
  br label %58

56:                                               ; preds = %49, %36
  %57 = load i32, i32* @MAC_BIBA_TYPE_HIGH, align 4
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %56, %54
  br label %59

59:                                               ; preds = %58, %34
  %60 = load %struct.mac_biba*, %struct.mac_biba** %11, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @biba_set_effective(%struct.mac_biba* %60, i32 %61, i32 0, i32* null)
  ret void
}

declare dso_local %struct.mac_biba* @SLOT(%struct.label*) #1

declare dso_local i8* @devtoname(%struct.cdev*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @biba_set_effective(%struct.mac_biba*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
