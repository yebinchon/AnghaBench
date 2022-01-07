; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_spe.c_spe_load_reg_high.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_spe.c_spe_load_reg_high.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @spe_load_reg_high to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spe_load_reg_high(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %70 [
    i32 1, label %6
    i32 2, label %8
    i32 3, label %10
    i32 4, label %12
    i32 5, label %14
    i32 6, label %16
    i32 7, label %18
    i32 8, label %20
    i32 9, label %22
    i32 10, label %24
    i32 11, label %26
    i32 12, label %28
    i32 13, label %30
    i32 14, label %32
    i32 15, label %34
    i32 16, label %36
    i32 17, label %38
    i32 18, label %40
    i32 19, label %42
    i32 20, label %44
    i32 21, label %46
    i32 22, label %48
    i32 23, label %50
    i32 24, label %52
    i32 25, label %54
    i32 26, label %56
    i32 27, label %58
    i32 28, label %60
    i32 29, label %62
    i32 30, label %64
    i32 31, label %66
    i32 0, label %68
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 1,$0,1", "r,~{dirflag},~{fpsr},~{flags}"(i32 %7) #1, !srcloc !2
  br label %70

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 2,$0,2", "r,~{dirflag},~{fpsr},~{flags}"(i32 %9) #1, !srcloc !3
  br label %70

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 3,$0,3", "r,~{dirflag},~{fpsr},~{flags}"(i32 %11) #1, !srcloc !4
  br label %70

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 4,$0,4", "r,~{dirflag},~{fpsr},~{flags}"(i32 %13) #1, !srcloc !5
  br label %70

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 5,$0,5", "r,~{dirflag},~{fpsr},~{flags}"(i32 %15) #1, !srcloc !6
  br label %70

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 6,$0,6", "r,~{dirflag},~{fpsr},~{flags}"(i32 %17) #1, !srcloc !7
  br label %70

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 7,$0,7", "r,~{dirflag},~{fpsr},~{flags}"(i32 %19) #1, !srcloc !8
  br label %70

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 8,$0,8", "r,~{dirflag},~{fpsr},~{flags}"(i32 %21) #1, !srcloc !9
  br label %70

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 9,$0,9", "r,~{dirflag},~{fpsr},~{flags}"(i32 %23) #1, !srcloc !10
  br label %70

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 10,$0,10", "r,~{dirflag},~{fpsr},~{flags}"(i32 %25) #1, !srcloc !11
  br label %70

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 11,$0,11", "r,~{dirflag},~{fpsr},~{flags}"(i32 %27) #1, !srcloc !12
  br label %70

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 12,$0,12", "r,~{dirflag},~{fpsr},~{flags}"(i32 %29) #1, !srcloc !13
  br label %70

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 13,$0,13", "r,~{dirflag},~{fpsr},~{flags}"(i32 %31) #1, !srcloc !14
  br label %70

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 14,$0,14", "r,~{dirflag},~{fpsr},~{flags}"(i32 %33) #1, !srcloc !15
  br label %70

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 15,$0,15", "r,~{dirflag},~{fpsr},~{flags}"(i32 %35) #1, !srcloc !16
  br label %70

36:                                               ; preds = %2
  %37 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 16,$0,16", "r,~{dirflag},~{fpsr},~{flags}"(i32 %37) #1, !srcloc !17
  br label %70

38:                                               ; preds = %2
  %39 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 17,$0,17", "r,~{dirflag},~{fpsr},~{flags}"(i32 %39) #1, !srcloc !18
  br label %70

40:                                               ; preds = %2
  %41 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 18,$0,18", "r,~{dirflag},~{fpsr},~{flags}"(i32 %41) #1, !srcloc !19
  br label %70

42:                                               ; preds = %2
  %43 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 19,$0,19", "r,~{dirflag},~{fpsr},~{flags}"(i32 %43) #1, !srcloc !20
  br label %70

44:                                               ; preds = %2
  %45 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 20,$0,20", "r,~{dirflag},~{fpsr},~{flags}"(i32 %45) #1, !srcloc !21
  br label %70

46:                                               ; preds = %2
  %47 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 21,$0,21", "r,~{dirflag},~{fpsr},~{flags}"(i32 %47) #1, !srcloc !22
  br label %70

48:                                               ; preds = %2
  %49 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 22,$0,22", "r,~{dirflag},~{fpsr},~{flags}"(i32 %49) #1, !srcloc !23
  br label %70

50:                                               ; preds = %2
  %51 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 23,$0,23", "r,~{dirflag},~{fpsr},~{flags}"(i32 %51) #1, !srcloc !24
  br label %70

52:                                               ; preds = %2
  %53 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 24,$0,24", "r,~{dirflag},~{fpsr},~{flags}"(i32 %53) #1, !srcloc !25
  br label %70

54:                                               ; preds = %2
  %55 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 25,$0,25", "r,~{dirflag},~{fpsr},~{flags}"(i32 %55) #1, !srcloc !26
  br label %70

56:                                               ; preds = %2
  %57 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 26,$0,26", "r,~{dirflag},~{fpsr},~{flags}"(i32 %57) #1, !srcloc !27
  br label %70

58:                                               ; preds = %2
  %59 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 27,$0,27", "r,~{dirflag},~{fpsr},~{flags}"(i32 %59) #1, !srcloc !28
  br label %70

60:                                               ; preds = %2
  %61 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 28,$0,28", "r,~{dirflag},~{fpsr},~{flags}"(i32 %61) #1, !srcloc !29
  br label %70

62:                                               ; preds = %2
  %63 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 29,$0,29", "r,~{dirflag},~{fpsr},~{flags}"(i32 %63) #1, !srcloc !30
  br label %70

64:                                               ; preds = %2
  %65 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 30,$0,30", "r,~{dirflag},~{fpsr},~{flags}"(i32 %65) #1, !srcloc !31
  br label %70

66:                                               ; preds = %2
  %67 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 31,$0,31", "r,~{dirflag},~{fpsr},~{flags}"(i32 %67) #1, !srcloc !32
  br label %70

68:                                               ; preds = %2
  %69 = load i32, i32* %4, align 4
  call void asm sideeffect "evmergelo 0,$0,0", "r,~{dirflag},~{fpsr},~{flags}"(i32 %69) #1, !srcloc !33
  br label %70

70:                                               ; preds = %2, %68, %66, %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 305}
!3 = !{i32 377}
!4 = !{i32 449}
!5 = !{i32 521}
!6 = !{i32 594}
!7 = !{i32 666}
!8 = !{i32 738}
!9 = !{i32 810}
!10 = !{i32 883}
!11 = !{i32 956}
!12 = !{i32 1031}
!13 = !{i32 1106}
!14 = !{i32 1182}
!15 = !{i32 1257}
!16 = !{i32 1332}
!17 = !{i32 1407}
!18 = !{i32 1483}
!19 = !{i32 1558}
!20 = !{i32 1633}
!21 = !{i32 1708}
!22 = !{i32 1784}
!23 = !{i32 1859}
!24 = !{i32 1934}
!25 = !{i32 2009}
!26 = !{i32 2085}
!27 = !{i32 2160}
!28 = !{i32 2235}
!29 = !{i32 2310}
!30 = !{i32 2386}
!31 = !{i32 2461}
!32 = !{i32 2536}
!33 = !{i32 2610}
