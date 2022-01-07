; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_machdep.c_cpu_flush_dcache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_machdep.c_cpu_flush_dcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cacheline_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_flush_dcache(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = ptrtoint i8* %7 to i64
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @cacheline_size, align 4
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %10, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 %17, %19
  %21 = load i32, i32* @cacheline_size, align 4
  %22 = call i64 @roundup2(i64 %20, i32 %21)
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %26, %2
  %24 = load i64, i64* %4, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  call void asm sideeffect "dcbf 0,$0", "r,~{dirflag},~{fpsr},~{flags}"(i32 %27) #2, !srcloc !2
  call void asm sideeffect "sync", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  %28 = load i32, i32* @cacheline_size, align 4
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @cacheline_size, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %4, align 8
  %34 = sub i64 %33, %32
  store i64 %34, i64* %4, align 8
  br label %23

35:                                               ; preds = %23
  ret void
}

declare dso_local i64 @roundup2(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 455}
!3 = !{i32 502}
