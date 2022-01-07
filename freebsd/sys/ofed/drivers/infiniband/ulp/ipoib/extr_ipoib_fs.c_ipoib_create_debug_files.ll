; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_fs.c_ipoib_create_debug_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_fs.c_ipoib_create_debug_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.ipoib_dev_priv* }
%struct.ipoib_dev_priv = type { i8*, i8* }

@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s_mcg\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@ipoib_root = common dso_local global i32 0, align 4
@ipoib_mcg_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to create mcg debug file\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s_path\00", align 1
@ipoib_path_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to create path debug file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_create_debug_files(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 0
  %8 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  store %struct.ipoib_dev_priv* %8, %struct.ipoib_dev_priv** %3, align 8
  %9 = load i32, i32* @IFNAMSIZ, align 4
  %10 = sext i32 %9 to i64
  %11 = add i64 %10, 6
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = trunc i64 %11 to i32
  %15 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %16 = call i8* @if_name(%struct.ifnet* %15)
  %17 = call i32 @snprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @S_IFREG, align 4
  %19 = load i32, i32* @S_IRUGO, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @ipoib_root, align 4
  %22 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %23 = call i8* @debugfs_create_file(i8* %13, i32 %20, i32 %21, %struct.ifnet* %22, i32* @ipoib_mcg_fops)
  %24 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %25 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %27 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %32 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %1
  %34 = trunc i64 %11 to i32
  %35 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %36 = call i8* @if_name(%struct.ifnet* %35)
  %37 = call i32 @snprintf(i8* %13, i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @S_IFREG, align 4
  %39 = load i32, i32* @S_IRUGO, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @ipoib_root, align 4
  %42 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %43 = call i8* @debugfs_create_file(i8* %13, i32 %40, i32 %41, %struct.ifnet* %42, i32* @ipoib_path_fops)
  %44 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %45 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %47 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %33
  %51 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %52 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %33
  %54 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %54)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @if_name(%struct.ifnet*) #2

declare dso_local i8* @debugfs_create_file(i8*, i32, i32, %struct.ifnet*, i32*) #2

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
