; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_crypt.c_smb_E.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_crypt.c_smb_E.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_SMBTEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @smb_E to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smb_E(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [8 x i32], align 16
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 254
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  store i32 %12, i32* %13, align 16
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 7
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 1
  %22 = and i32 %21, 254
  %23 = or i32 %17, %22
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 1
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 6
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 2
  %33 = and i32 %32, 254
  %34 = or i32 %28, %33
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 2
  store i32 %34, i32* %35, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 5
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 3
  %44 = and i32 %43, 254
  %45 = or i32 %39, %44
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 3
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 4
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 4
  %55 = and i32 %54, 254
  %56 = or i32 %50, %55
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 4
  store i32 %56, i32* %57, align 16
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 3
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 5
  %66 = and i32 %65, 254
  %67 = or i32 %61, %66
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 5
  store i32 %67, i32* %68, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 5
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 2
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 6
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %75, 6
  %77 = and i32 %76, 254
  %78 = or i32 %72, %77
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 6
  store i32 %78, i32* %79, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 6
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 1
  %84 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 7
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* @M_SMBTEMP, align 4
  %86 = load i32, i32* @M_WAITOK, align 4
  %87 = call i32* @malloc(i32 4, i32 %85, i32 %86)
  store i32* %87, i32** %7, align 8
  %88 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @des_set_key(i32* %88, i32 %90)
  %92 = load i32*, i32** %5, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @des_ecb_encrypt(i32* %92, i32* %93, i32 %95, i32 1)
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* @M_SMBTEMP, align 4
  %99 = call i32 @free(i32* %97, i32 %98)
  ret void
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @des_set_key(i32*, i32) #1

declare dso_local i32 @des_ecb_encrypt(i32*, i32*, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
