; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_vfs_mountroot_readconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_vfs_mountroot_readconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.sbuf = type { i32 }
%struct.nameidata = type { i32 }

@vfs_mountroot_readconf.buf = internal global [128 x i8] zeroinitializer, align 16
@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"/.mount.conf\00", align 1
@FREAD = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@IO_NODELOCKED = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.sbuf*)* @vfs_mountroot_readconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_mountroot_readconf(%struct.thread* %0, %struct.sbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.sbuf*, align 8
  %6 = alloca %struct.nameidata, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.sbuf* %1, %struct.sbuf** %5, align 8
  %12 = load i32, i32* @LOOKUP, align 4
  %13 = load i32, i32* @FOLLOW, align 4
  %14 = load i32, i32* @UIO_SYSSPACE, align 4
  %15 = load %struct.thread*, %struct.thread** %4, align 8
  %16 = call i32 @NDINIT(%struct.nameidata* %6, i32 %12, i32 %13, i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.thread* %15)
  %17 = load i32, i32* @FREAD, align 4
  store i32 %17, i32* %10, align 4
  %18 = call i32 @vn_open(%struct.nameidata* %6, i32* %10, i32 0, i32* null)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %3, align 4
  br label %75

23:                                               ; preds = %2
  %24 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %25 = call i32 @NDFREE(%struct.nameidata* %6, i32 %24)
  store i64 0, i64* %7, align 8
  store i32 127, i32* %11, align 4
  br label %26

26:                                               ; preds = %23, %48
  %27 = load i32, i32* @UIO_READ, align 4
  %28 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* @UIO_SYSSPACE, align 4
  %33 = load i32, i32* @IO_NODELOCKED, align 4
  %34 = load %struct.thread*, %struct.thread** %4, align 8
  %35 = getelementptr inbounds %struct.thread, %struct.thread* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NOCRED, align 4
  %38 = load %struct.thread*, %struct.thread** %4, align 8
  %39 = call i32 @vn_rdwr(i32 %27, i32 %29, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @vfs_mountroot_readconf.buf, i64 0, i64 0), i32 %30, i64 %31, i32 %32, i32 %33, i32 %36, i32 %37, i32* %8, %struct.thread* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  br label %62

43:                                               ; preds = %26
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %62

48:                                               ; preds = %43
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* @vfs_mountroot_readconf.buf, i64 0, i64 %52
  store i8 0, i8* %53, align 1
  %54 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %55 = call i32 @sbuf_printf(%struct.sbuf* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @vfs_mountroot_readconf.buf, i64 0, i64 0))
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sub nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %7, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %7, align 8
  br label %26

62:                                               ; preds = %47, %42
  %63 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @VOP_UNLOCK(i32 %64, i32 0)
  %66 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @FREAD, align 4
  %69 = load %struct.thread*, %struct.thread** %4, align 8
  %70 = getelementptr inbounds %struct.thread, %struct.thread* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.thread*, %struct.thread** %4, align 8
  %73 = call i32 @vn_close(i32 %67, i32 %68, i32 %71, %struct.thread* %72)
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %62, %21
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, %struct.thread*) #1

declare dso_local i32 @vn_open(%struct.nameidata*, i32*, i32, i32*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @vn_rdwr(i32, i32, i8*, i32, i64, i32, i32, i32, i32, i32*, %struct.thread*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i8*) #1

declare dso_local i32 @VOP_UNLOCK(i32, i32) #1

declare dso_local i32 @vn_close(i32, i32, i32, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
