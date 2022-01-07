; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/syscon/extr_syscon.c_syscon_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/syscon/extr_syscon.c_syscon_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscon = type { i32, i8* }
%struct.TYPE_3__ = type { i32 }

@M_SYSCON = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.syscon* @syscon_create(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.syscon*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load i32, i32* @M_SYSCON, align 4
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = load i32, i32* @M_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = call i8* @malloc(i32 16, i32 %6, i32 %9)
  %11 = bitcast i8* %10 to %struct.syscon*
  store %struct.syscon* %11, %struct.syscon** %5, align 8
  %12 = load %struct.syscon*, %struct.syscon** %5, align 8
  %13 = ptrtoint %struct.syscon* %12 to i32
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = ptrtoint %struct.TYPE_3__* %14 to i32
  %16 = call i32 @kobj_init(i32 %13, i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @M_SYSCON, align 4
  %26 = load i32, i32* @M_WAITOK, align 4
  %27 = load i32, i32* @M_ZERO, align 4
  %28 = or i32 %26, %27
  %29 = call i8* @malloc(i32 %24, i32 %25, i32 %28)
  %30 = load %struct.syscon*, %struct.syscon** %5, align 8
  %31 = getelementptr inbounds %struct.syscon, %struct.syscon* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  br label %32

32:                                               ; preds = %21, %2
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.syscon*, %struct.syscon** %5, align 8
  %35 = getelementptr inbounds %struct.syscon, %struct.syscon* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.syscon*, %struct.syscon** %5, align 8
  ret %struct.syscon* %36
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @kobj_init(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
