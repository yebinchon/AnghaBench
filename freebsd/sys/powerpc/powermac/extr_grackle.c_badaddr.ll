; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_grackle.c_badaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_grackle.c_badaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@curthread = common dso_local global %struct.thread* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"badaddr: invalid size (%zd)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @badaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @badaddr(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  call void asm sideeffect "sync; isync", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %10 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %10, %struct.thread** %6, align 8
  %11 = load %struct.thread*, %struct.thread** %6, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load %struct.thread*, %struct.thread** %6, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32* %7, i32** %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @setjmp(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.thread*, %struct.thread** %6, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32* %24, i32** %28, align 8
  call void asm sideeffect "sync", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  store i32 1, i32* %3, align 4
  br label %52

29:                                               ; preds = %2
  call void asm sideeffect "sync", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  %30 = load i64, i64* %5, align 8
  switch i64 %30, label %43 [
    i64 1, label %31
    i64 2, label %35
    i64 4, label %39
  ]

31:                                               ; preds = %29
  %32 = load i8*, i8** %4, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load volatile i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  br label %46

35:                                               ; preds = %29
  %36 = load i8*, i8** %4, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = load volatile i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  br label %46

39:                                               ; preds = %29
  %40 = load i8*, i8** %4, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load volatile i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  br label %46

43:                                               ; preds = %29
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %43, %39, %35, %31
  call void asm sideeffect "sync; isync", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !5
  %47 = load i32*, i32** %8, align 8
  %48 = load %struct.thread*, %struct.thread** %6, align 8
  %49 = getelementptr inbounds %struct.thread, %struct.thread* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32* %47, i32** %51, align 8
  call void asm sideeffect "sync", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !6
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %46, %23
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @setjmp(i32) #1

declare dso_local i32 @panic(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 570}
!3 = !{i32 759}
!4 = !{i32 803}
!5 = !{i32 1062}
!6 = !{i32 1138}
