; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_extattr.c_kern_extattr_get_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_extattr.c_kern_extattr_get_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.nameidata = type { i32 }

@EXTATTR_MAXNAMELEN = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i8*, i32, i8*, i8*, i64, i32)* @kern_extattr_get_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_extattr_get_path(%struct.thread* %0, i8* %1, i32 %2, i8* %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.nameidata, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %21 = load i32, i32* @EXTATTR_MAXNAMELEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %17, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %18, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @AUDIT_ARG_VALUE(i32 %25)
  %27 = load i8*, i8** %12, align 8
  %28 = load i32, i32* @EXTATTR_MAXNAMELEN, align 4
  %29 = call i32 @copyinstr(i8* %27, i8* %24, i32 %28, i32* null)
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* %19, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %7
  %33 = load i32, i32* %19, align 4
  store i32 %33, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %63

34:                                               ; preds = %7
  %35 = call i32 @AUDIT_ARG_TEXT(i8* %24)
  %36 = load i32, i32* @LOOKUP, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @AUDITVNODE1, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @UIO_USERSPACE, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = load %struct.thread*, %struct.thread** %9, align 8
  %43 = call i32 @NDINIT(%struct.nameidata* %16, i32 %36, i32 %39, i32 %40, i8* %41, %struct.thread* %42)
  %44 = call i32 @namei(%struct.nameidata* %16)
  store i32 %44, i32* %19, align 4
  %45 = load i32, i32* %19, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = load i32, i32* %19, align 4
  store i32 %48, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %63

49:                                               ; preds = %34
  %50 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %51 = call i32 @NDFREE(%struct.nameidata* %16, i32 %50)
  %52 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %16, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i8*, i8** %13, align 8
  %56 = load i64, i64* %14, align 8
  %57 = load %struct.thread*, %struct.thread** %9, align 8
  %58 = call i32 @extattr_get_vp(i32 %53, i32 %54, i8* %24, i8* %55, i64 %56, %struct.thread* %57)
  store i32 %58, i32* %19, align 4
  %59 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %16, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @vrele(i32 %60)
  %62 = load i32, i32* %19, align 4
  store i32 %62, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %63

63:                                               ; preds = %49, %47, %32
  %64 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @AUDIT_ARG_VALUE(i32) #2

declare dso_local i32 @copyinstr(i8*, i8*, i32, i32*) #2

declare dso_local i32 @AUDIT_ARG_TEXT(i8*) #2

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, %struct.thread*) #2

declare dso_local i32 @namei(%struct.nameidata*) #2

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #2

declare dso_local i32 @extattr_get_vp(i32, i32, i8*, i8*, i64, %struct.thread*) #2

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
