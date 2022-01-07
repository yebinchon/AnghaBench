; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_mp_machdep.c_install_ap_tramp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_mp_machdep.c_install_ap_tramp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bootMP_size = common dso_local global i32 0, align 4
@boot_address = common dso_local global i32 0, align 4
@bootMP = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"'size' do not fit into PAGE_SIZE, as expected.\00", align 1
@kernel_pmap = common dso_local global i32 0, align 4
@mp_gdtbase = common dso_local global i32 0, align 4
@MP_GDT = common dso_local global i32 0, align 4
@bigJump = common dso_local global i64 0, align 8
@MPentry = common dso_local global i64 0, align 8
@bootCodeSeg = common dso_local global i64 0, align 8
@bootDataSeg = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @install_ap_tramp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @install_ap_tramp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = load i32, i32* @bootMP_size, align 4
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* @boot_address, align 4
  store i32 %11, i32* %3, align 4
  %12 = load i64, i64* @bootMP, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %5, align 8
  %17 = load i64, i64* @bootMP, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = icmp sle i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @boot_address, align 4
  %26 = call i32 @pmap_kenter(i32 %24, i32 %25)
  %27 = load i32, i32* @kernel_pmap, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @pmap_invalidate_page(i32 %27, i32 %28)
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %40, %0
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %4, align 8
  %37 = load i32, i32* %35, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  br label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %1, align 4
  br label %30

43:                                               ; preds = %30
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %5, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 ptrtoint (i32* @mp_gdtbase to i32), %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32* %51, i32** %9, align 8
  %52 = load i32, i32* @boot_address, align 4
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 ptrtoint (i32* @MP_GDT to i32), %53
  %55 = add nsw i32 %52, %54
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = load i64, i64* @bigJump, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* %6, align 4
  %61 = sub nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %57, i64 %62
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32* %64, i32** %9, align 8
  %65 = load i64, i64* @MPentry, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i32*, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = load i64, i64* @bootCodeSeg, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i32, i32* %6, align 4
  %72 = sub nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %68, i64 %73
  store i32* %74, i32** %8, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32* %76, i32** %7, align 8
  %77 = load i32, i32* @boot_address, align 4
  %78 = and i32 %77, 65535
  %79 = load i32*, i32** %8, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* @boot_address, align 4
  %81 = ashr i32 %80, 16
  %82 = and i32 %81, 255
  %83 = load i32*, i32** %7, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = load i64, i64* @bootDataSeg, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* %6, align 4
  %88 = sub nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %84, i64 %89
  store i32* %90, i32** %8, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32* %92, i32** %7, align 8
  %93 = load i32, i32* @boot_address, align 4
  %94 = and i32 %93, 65535
  %95 = load i32*, i32** %8, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* @boot_address, align 4
  %97 = ashr i32 %96, 16
  %98 = and i32 %97, 255
  %99 = load i32*, i32** %7, align 8
  store i32 %98, i32* %99, align 4
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_kenter(i32, i32) #1

declare dso_local i32 @pmap_invalidate_page(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
