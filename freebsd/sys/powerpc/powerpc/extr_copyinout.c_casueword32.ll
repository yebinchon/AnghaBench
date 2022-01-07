; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_copyinout.c_casueword32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_copyinout.c_casueword32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @casueword32(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %16, %struct.thread** %10, align 8
  %17 = load %struct.thread*, %struct.thread** %10, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32* %22, i32** %11, align 8
  %23 = load %struct.thread*, %struct.thread** %10, align 8
  %24 = getelementptr inbounds %struct.thread, %struct.thread* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32* %12, i32** %26, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i64 @setjmp(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load %struct.thread*, %struct.thread** %10, align 8
  %32 = getelementptr inbounds %struct.thread, %struct.thread* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  store i32 -1, i32* %5, align 4
  br label %65

35:                                               ; preds = %4
  %36 = load i32*, i32** %11, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = ptrtoint i32* %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = bitcast i32** %13 to i8**
  %41 = call i64 @pmap_map_user_ptr(i32* %36, i8* %39, i8** %40, i32 4, i32* null)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load %struct.thread*, %struct.thread** %10, align 8
  %45 = getelementptr inbounds %struct.thread, %struct.thread* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  store i32 -1, i32* %5, align 4
  br label %65

48:                                               ; preds = %35
  store i32 0, i32* %15, align 4
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32*, i32** %13, align 8
  %55 = call { i32, i32 } asm sideeffect "lwarx $0, 0, $3\0A\09cmplw $4, $0\0A\09bne 1f\0A\09stwcx. $5, 0, $3\0A\09bne- 2f\0A\09b 3f\0A\091:\0A\09stwcx. $0, 0, $3\0A\092:li $2, 1\0A\093:\0A\09", "=&r,=*m,=&r,r,r,r,*m,2,~{cr0},~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %49, i32* %51, i32 %52, i32 %53, i32* %54, i32 %50) #2, !srcloc !2
  %56 = extractvalue { i32, i32 } %55, 0
  %57 = extractvalue { i32, i32 } %55, 1
  store i32 %56, i32* %14, align 4
  store i32 %57, i32* %15, align 4
  %58 = load %struct.thread*, %struct.thread** %10, align 8
  %59 = getelementptr inbounds %struct.thread, %struct.thread* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load i32*, i32** %8, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %15, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %48, %43, %30
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i64 @setjmp(i32) #1

declare dso_local i64 @pmap_map_user_ptr(i32*, i8*, i8**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1134, i32 1152, i32 1173, i32 1188, i32 1213, i32 1229, i32 1242, i32 1253, i32 1278, i32 1297, i32 1308}
