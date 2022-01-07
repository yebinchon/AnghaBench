; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_kernel_if.c_vmci_memcpy_toiovec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_kernel_if.c_vmci_memcpy_toiovec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iovec*, i32*, i64)* @vmci_memcpy_toiovec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmci_memcpy_toiovec(%struct.iovec* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.iovec*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.iovec* %0, %struct.iovec** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %8

8:                                                ; preds = %48, %3
  %9 = load i64, i64* %6, align 8
  %10 = icmp ugt i64 %9, 0
  br i1 %10, label %11, label %51

11:                                               ; preds = %8
  %12 = load %struct.iovec*, %struct.iovec** %4, align 8
  %13 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %11
  %17 = load %struct.iovec*, %struct.iovec** %4, align 8
  %18 = getelementptr inbounds %struct.iovec, %struct.iovec* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @MIN(i64 %19, i64 %20)
  store i64 %21, i64* %7, align 8
  %22 = load %struct.iovec*, %struct.iovec** %4, align 8
  %23 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @memcpy(i8* %24, i32* %25, i64 %26)
  %28 = load i64, i64* %7, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 %28
  store i32* %30, i32** %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %6, align 8
  %33 = sub i64 %32, %31
  store i64 %33, i64* %6, align 8
  %34 = load %struct.iovec*, %struct.iovec** %4, align 8
  %35 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %37, %38
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.iovec*, %struct.iovec** %4, align 8
  %42 = getelementptr inbounds %struct.iovec, %struct.iovec* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.iovec*, %struct.iovec** %4, align 8
  %45 = getelementptr inbounds %struct.iovec, %struct.iovec* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub i64 %46, %43
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %16, %11
  %49 = load %struct.iovec*, %struct.iovec** %4, align 8
  %50 = getelementptr inbounds %struct.iovec, %struct.iovec* %49, i32 1
  store %struct.iovec* %50, %struct.iovec** %4, align 8
  br label %8

51:                                               ; preds = %8
  ret void
}

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
