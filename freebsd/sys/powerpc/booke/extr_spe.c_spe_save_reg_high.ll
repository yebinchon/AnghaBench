; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_spe.c_spe_save_reg_high.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_spe.c_spe_save_reg_high.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @spe_save_reg_high to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spe_save_reg_high(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32], align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %69 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %9
    i32 3, label %11
    i32 4, label %13
    i32 5, label %15
    i32 6, label %17
    i32 7, label %19
    i32 8, label %21
    i32 9, label %23
    i32 10, label %25
    i32 11, label %27
    i32 12, label %29
    i32 13, label %31
    i32 14, label %33
    i32 15, label %35
    i32 16, label %37
    i32 17, label %39
    i32 18, label %41
    i32 19, label %43
    i32 20, label %45
    i32 21, label %47
    i32 22, label %49
    i32 23, label %51
    i32 24, label %53
    i32 25, label %55
    i32 26, label %57
    i32 27, label %59
    i32 28, label %61
    i32 29, label %63
    i32 30, label %65
    i32 31, label %67
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %6, i32 0) #1, !srcloc !2
  br label %69

7:                                                ; preds = %1
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %8, i32 1) #1, !srcloc !3
  br label %69

9:                                                ; preds = %1
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %10, i32 2) #1, !srcloc !4
  br label %69

11:                                               ; preds = %1
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %12, i32 3) #1, !srcloc !5
  br label %69

13:                                               ; preds = %1
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %14, i32 4) #1, !srcloc !6
  br label %69

15:                                               ; preds = %1
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %16, i32 5) #1, !srcloc !7
  br label %69

17:                                               ; preds = %1
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %18, i32 6) #1, !srcloc !8
  br label %69

19:                                               ; preds = %1
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %20, i32 7) #1, !srcloc !9
  br label %69

21:                                               ; preds = %1
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %22, i32 8) #1, !srcloc !10
  br label %69

23:                                               ; preds = %1
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %24, i32 9) #1, !srcloc !11
  br label %69

25:                                               ; preds = %1
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %26, i32 10) #1, !srcloc !12
  br label %69

27:                                               ; preds = %1
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %28, i32 11) #1, !srcloc !13
  br label %69

29:                                               ; preds = %1
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %30, i32 12) #1, !srcloc !14
  br label %69

31:                                               ; preds = %1
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %32, i32 13) #1, !srcloc !15
  br label %69

33:                                               ; preds = %1
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %34, i32 14) #1, !srcloc !16
  br label %69

35:                                               ; preds = %1
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %36, i32 15) #1, !srcloc !17
  br label %69

37:                                               ; preds = %1
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %38, i32 16) #1, !srcloc !18
  br label %69

39:                                               ; preds = %1
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %40, i32 17) #1, !srcloc !19
  br label %69

41:                                               ; preds = %1
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %42, i32 18) #1, !srcloc !20
  br label %69

43:                                               ; preds = %1
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %44, i32 19) #1, !srcloc !21
  br label %69

45:                                               ; preds = %1
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %46, i32 20) #1, !srcloc !22
  br label %69

47:                                               ; preds = %1
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %48, i32 21) #1, !srcloc !23
  br label %69

49:                                               ; preds = %1
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %50, i32 22) #1, !srcloc !24
  br label %69

51:                                               ; preds = %1
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %52, i32 23) #1, !srcloc !25
  br label %69

53:                                               ; preds = %1
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %54, i32 24) #1, !srcloc !26
  br label %69

55:                                               ; preds = %1
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %56, i32 25) #1, !srcloc !27
  br label %69

57:                                               ; preds = %1
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %58, i32 26) #1, !srcloc !28
  br label %69

59:                                               ; preds = %1
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %60, i32 27) #1, !srcloc !29
  br label %69

61:                                               ; preds = %1
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %62, i32 28) #1, !srcloc !30
  br label %69

63:                                               ; preds = %1
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %64, i32 29) #1, !srcloc !31
  br label %69

65:                                               ; preds = %1
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %66, i32 30) #1, !srcloc !32
  br label %69

67:                                               ; preds = %1
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "evstdw $1,0($0)", "{bx},n,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %68, i32 31) #1, !srcloc !33
  br label %69

69:                                               ; preds = %1, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %71 = load i32, i32* %70, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 315}
!3 = !{i32 400}
!4 = !{i32 485}
!5 = !{i32 570}
!6 = !{i32 656}
!7 = !{i32 741}
!8 = !{i32 826}
!9 = !{i32 911}
!10 = !{i32 997}
!11 = !{i32 1082}
!12 = !{i32 1168}
!13 = !{i32 1255}
!14 = !{i32 1343}
!15 = !{i32 1430}
!16 = !{i32 1517}
!17 = !{i32 1604}
!18 = !{i32 1692}
!19 = !{i32 1779}
!20 = !{i32 1866}
!21 = !{i32 1953}
!22 = !{i32 2041}
!23 = !{i32 2128}
!24 = !{i32 2215}
!25 = !{i32 2302}
!26 = !{i32 2390}
!27 = !{i32 2477}
!28 = !{i32 2564}
!29 = !{i32 2651}
!30 = !{i32 2739}
!31 = !{i32 2826}
!32 = !{i32 2913}
!33 = !{i32 3000}
