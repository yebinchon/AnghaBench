; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scterm-teken.c_scteken_sc_to_te_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scterm-teken.c_scteken_sc_to_te_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i8, i64 }

@sc_to_te_color = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, %struct.TYPE_3__*)* @scteken_sc_to_te_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scteken_sc_to_te_attr(i8 zeroext %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.TYPE_3__*, align 8
  store i8 %0, i8* %3, align 1
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = load i8*, i8** @sc_to_te_color, align 8
  %8 = load i8, i8* %3, align 1
  %9 = zext i8 %8 to i32
  %10 = and i32 %9, 7
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %7, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* %3, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 8
  %18 = or i32 %14, %17
  %19 = trunc i32 %18 to i8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i8 %19, i8* %21, align 8
  %22 = load i8*, i8** @sc_to_te_color, align 8
  %23 = load i8, i8* %3, align 1
  %24 = zext i8 %23 to i32
  %25 = ashr i32 %24, 4
  %26 = and i32 %25, 7
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %22, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* %3, align 1
  %32 = zext i8 %31 to i32
  %33 = ashr i32 %32, 4
  %34 = and i32 %33, 8
  %35 = or i32 %30, %34
  %36 = trunc i32 %35 to i8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i8 %36, i8* %38, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
