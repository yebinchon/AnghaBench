; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_extattr.c_kern_extattr_delete_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_extattr.c_kern_extattr_delete_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.nameidata = type { i32 }

@EXTATTR_MAXNAMELEN = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i8*, i32, i8*, i32)* @kern_extattr_delete_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_extattr_delete_path(%struct.thread* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nameidata, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* @EXTATTR_MAXNAMELEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @AUDIT_ARG_VALUE(i32 %21)
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* @EXTATTR_MAXNAMELEN, align 4
  %25 = call i32 @copyinstr(i8* %23, i8* %20, i32 %24, i32* null)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* %15, align 4
  store i32 %29, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %57

30:                                               ; preds = %5
  %31 = call i32 @AUDIT_ARG_TEXT(i8* %20)
  %32 = load i32, i32* @LOOKUP, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @AUDITVNODE1, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @UIO_USERSPACE, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.thread*, %struct.thread** %7, align 8
  %39 = call i32 @NDINIT(%struct.nameidata* %12, i32 %32, i32 %35, i32 %36, i8* %37, %struct.thread* %38)
  %40 = call i32 @namei(%struct.nameidata* %12)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %30
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %57

45:                                               ; preds = %30
  %46 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %47 = call i32 @NDFREE(%struct.nameidata* %12, i32 %46)
  %48 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.thread*, %struct.thread** %7, align 8
  %52 = call i32 @extattr_delete_vp(i32 %49, i32 %50, i8* %20, %struct.thread* %51)
  store i32 %52, i32* %15, align 4
  %53 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @vrele(i32 %54)
  %56 = load i32, i32* %15, align 4
  store i32 %56, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %57

57:                                               ; preds = %45, %43, %28
  %58 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @AUDIT_ARG_VALUE(i32) #2

declare dso_local i32 @copyinstr(i8*, i8*, i32, i32*) #2

declare dso_local i32 @AUDIT_ARG_TEXT(i8*) #2

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, %struct.thread*) #2

declare dso_local i32 @namei(%struct.nameidata*) #2

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #2

declare dso_local i32 @extattr_delete_vp(i32, i32, i8*, %struct.thread*) #2

declare dso_local i32 @vrele(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
