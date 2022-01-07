; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_syncicache.c___syncicache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_syncicache.c___syncicache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cacheline_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__syncicache(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = load i32, i32* @cacheline_size, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = and i64 %9, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* %4, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = sub i64 0, %20
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  store i8* %22, i8** %7, align 8
  br label %23

23:                                               ; preds = %29, %2
  %24 = load i8*, i8** %7, align 8
  call void asm sideeffect "dcbst 0,$0", "r,~{dirflag},~{fpsr},~{flags}"(i8* %24) #1, !srcloc !2
  %25 = load i32, i32* @cacheline_size, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %7, align 8
  br label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @cacheline_size, align 4
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %23, label %34

34:                                               ; preds = %29
  call void asm sideeffect "sync", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !3
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 0, %37
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  store i8* %39, i8** %7, align 8
  br label %40

40:                                               ; preds = %46, %34
  %41 = load i8*, i8** %7, align 8
  call void asm sideeffect "icbi 0,$0", "r,~{dirflag},~{fpsr},~{flags}"(i8* %41) #1, !srcloc !4
  %42 = load i32, i32* @cacheline_size, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %7, align 8
  br label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @cacheline_size, align 4
  %48 = load i32, i32* %4, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %40, label %51

51:                                               ; preds = %46
  call void asm sideeffect "sync; isync", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 377}
!3 = !{i32 482}
!4 = !{i32 542}
!5 = !{i32 648}
