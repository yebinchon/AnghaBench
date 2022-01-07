; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_mdsetcred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_mdsetcred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_s = type { i64, i64, i32 }
%struct.ucred = type { i32 }
%struct.uio = type { i32, i32, i32, i32, i64, %struct.iovec* }
%struct.iovec = type { i8*, i32 }

@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_s*, %struct.ucred*)* @mdsetcred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdsetcred(%struct.md_s* %0, %struct.ucred* %1) #0 {
  %3 = alloca %struct.md_s*, align 8
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uio, align 8
  %8 = alloca %struct.iovec, align 8
  store %struct.md_s* %0, %struct.md_s** %3, align 8
  store %struct.ucred* %1, %struct.ucred** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.md_s*, %struct.md_s** %3, align 8
  %10 = getelementptr inbounds %struct.md_s, %struct.md_s* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.md_s*, %struct.md_s** %3, align 8
  %15 = getelementptr inbounds %struct.md_s, %struct.md_s* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @crfree(i64 %16)
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.ucred*, %struct.ucred** %4, align 8
  %20 = call i64 @crhold(%struct.ucred* %19)
  %21 = load %struct.md_s*, %struct.md_s** %3, align 8
  %22 = getelementptr inbounds %struct.md_s, %struct.md_s* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.md_s*, %struct.md_s** %3, align 8
  %24 = getelementptr inbounds %struct.md_s, %struct.md_s* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %72

27:                                               ; preds = %18
  %28 = load %struct.md_s*, %struct.md_s** %3, align 8
  %29 = getelementptr inbounds %struct.md_s, %struct.md_s* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @M_TEMP, align 4
  %32 = load i32, i32* @M_WAITOK, align 4
  %33 = call i8* @malloc(i32 %30, i32 %31, i32 %32)
  store i8* %33, i8** %5, align 8
  %34 = call i32 @bzero(%struct.uio* %7, i32 32)
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load %struct.md_s*, %struct.md_s** %3, align 8
  %38 = getelementptr inbounds %struct.md_s, %struct.md_s* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 1
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.uio, %struct.uio* %7, i32 0, i32 5
  store %struct.iovec* %8, %struct.iovec** %41, align 8
  %42 = getelementptr inbounds %struct.uio, %struct.uio* %7, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = getelementptr inbounds %struct.uio, %struct.uio* %7, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @UIO_READ, align 4
  %45 = getelementptr inbounds %struct.uio, %struct.uio* %7, i32 0, i32 3
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @UIO_SYSSPACE, align 4
  %47 = getelementptr inbounds %struct.uio, %struct.uio* %7, i32 0, i32 2
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.uio, %struct.uio* %7, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.md_s*, %struct.md_s** %3, align 8
  %52 = getelementptr inbounds %struct.md_s, %struct.md_s* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @LK_EXCLUSIVE, align 4
  %55 = load i32, i32* @LK_RETRY, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @vn_lock(i64 %53, i32 %56)
  %58 = load %struct.md_s*, %struct.md_s** %3, align 8
  %59 = getelementptr inbounds %struct.md_s, %struct.md_s* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.md_s*, %struct.md_s** %3, align 8
  %62 = getelementptr inbounds %struct.md_s, %struct.md_s* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @VOP_READ(i64 %60, %struct.uio* %7, i32 0, i64 %63)
  store i32 %64, i32* %6, align 4
  %65 = load %struct.md_s*, %struct.md_s** %3, align 8
  %66 = getelementptr inbounds %struct.md_s, %struct.md_s* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @VOP_UNLOCK(i64 %67, i32 0)
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* @M_TEMP, align 4
  %71 = call i32 @free(i8* %69, i32 %70)
  br label %72

72:                                               ; preds = %27, %18
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @crfree(i64) #1

declare dso_local i64 @crhold(%struct.ucred*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.uio*, i32) #1

declare dso_local i32 @vn_lock(i64, i32) #1

declare dso_local i32 @VOP_READ(i64, %struct.uio*, i32, i64) #1

declare dso_local i32 @VOP_UNLOCK(i64, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
