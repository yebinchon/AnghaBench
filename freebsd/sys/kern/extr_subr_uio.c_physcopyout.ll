; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_uio.c_physcopyout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_uio.c_physcopyout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64, i8* }
%struct.uio = type { i32, i64, i32, i32, i64, %struct.iovec* }

@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @physcopyout(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [1 x %struct.iovec], align 16
  %10 = alloca %struct.uio, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @PHYS_PAGE_COUNT(i64 %12)
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %9, i64 0, i64 0
  %19 = getelementptr inbounds %struct.iovec, %struct.iovec* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %9, i64 0, i64 0
  %22 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 16
  %23 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %9, i64 0, i64 0
  %24 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 5
  store %struct.iovec* %23, %struct.iovec** %24, align 8
  %25 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 1
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* @UIO_SYSSPACE, align 4
  %30 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 3
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @UIO_READ, align 4
  %32 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %44, %3
  %34 = load i32, i32* %11, align 4
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @PHYS_PAGE_COUNT(i64 %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @PHYS_TO_VM_PAGE(i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %16, i64 %42
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  %47 = load i64, i64* @PAGE_SIZE, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %33

52:                                               ; preds = %33
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @PAGE_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @uiomove_fromphys(i32* %16, i32 %55, i64 %56, %struct.uio* %10)
  %58 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %58)
  ret i32 %57
}

declare dso_local i32 @PHYS_PAGE_COUNT(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @uiomove_fromphys(i32*, i32, i64, %struct.uio*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
