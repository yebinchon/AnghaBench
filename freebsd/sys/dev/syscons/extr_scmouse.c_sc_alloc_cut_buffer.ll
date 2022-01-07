; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scmouse.c_sc_alloc_cut_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scmouse.c_sc_alloc_cut_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@cut_buffer = common dso_local global i8* null, align 8
@cut_buffer_size = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sc_alloc_cut_buffer(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** @cut_buffer, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @cut_buffer_size, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %12, %15
  %17 = add nsw i32 %16, 1
  %18 = icmp slt i32 %9, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %8, %2
  %20 = load i8*, i8** @cut_buffer, align 8
  store i8* %20, i8** %5, align 8
  store i8* null, i8** @cut_buffer, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* @M_DEVBUF, align 4
  %26 = call i32 @free(i8* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %30, %33
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @cut_buffer_size, align 4
  %36 = load i32, i32* @cut_buffer_size, align 4
  %37 = load i32, i32* @M_DEVBUF, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load i32, i32* @M_WAITOK, align 4
  br label %44

42:                                               ; preds = %27
  %43 = load i32, i32* @M_NOWAIT, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = call i64 @malloc(i32 %36, i32 %37, i32 %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %5, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 0, i8* %52, align 1
  br label %53

53:                                               ; preds = %50, %44
  %54 = load i8*, i8** %5, align 8
  store i8* %54, i8** @cut_buffer, align 8
  br label %55

55:                                               ; preds = %53, %8
  ret void
}

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
