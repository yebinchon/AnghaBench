; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kldxref/extr_kldxref.c_pnp_eisaformat.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kldxref/extr_kldxref.c_pnp_eisaformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pnp_eisaformat.idbuf = internal global [8 x i8] zeroinitializer, align 1
@__const.pnp_eisaformat.hextoascii = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @pnp_eisaformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pnp_eisaformat(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [17 x i8], align 16
  store i32 %0, i32* %2, align 4
  %5 = bitcast [17 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.pnp_eisaformat.hextoascii, i32 0, i32 0), i64 17, i1 false)
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @htole32(i32 %6)
  store i32 %7, i32* %2, align 4
  store i32* %2, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 124
  %12 = ashr i32 %11, 2
  %13 = add nsw i32 64, %12
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pnp_eisaformat.idbuf, i64 0, i64 0), align 1
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 3
  %19 = shl i32 %18, 3
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 224
  %24 = ashr i32 %23, 5
  %25 = add nsw i32 %19, %24
  %26 = add nsw i32 64, %25
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pnp_eisaformat.idbuf, i64 0, i64 1), align 1
  %28 = load i32*, i32** %3, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 31
  %32 = add nsw i32 64, %31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pnp_eisaformat.idbuf, i64 0, i64 2), align 1
  %34 = load i32*, i32** %3, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [17 x i8], [17 x i8]* %4, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pnp_eisaformat.idbuf, i64 0, i64 3), align 1
  %41 = load i32*, i32** %3, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 15
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [17 x i8], [17 x i8]* %4, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  store i8 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pnp_eisaformat.idbuf, i64 0, i64 4), align 1
  %48 = load i32*, i32** %3, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [17 x i8], [17 x i8]* %4, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  store i8 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pnp_eisaformat.idbuf, i64 0, i64 5), align 1
  %55 = load i32*, i32** %3, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 15
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [17 x i8], [17 x i8]* %4, i64 0, i64 %59
  %61 = load i8, i8* %60, align 1
  store i8 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pnp_eisaformat.idbuf, i64 0, i64 6), align 1
  store i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pnp_eisaformat.idbuf, i64 0, i64 7), align 1
  ret i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pnp_eisaformat.idbuf, i64 0, i64 0)
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @htole32(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
