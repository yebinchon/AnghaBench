; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scmouse.c_sc_mouse_input_button.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scmouse.c_sc_mouse_input_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8, i8 }

@__const.sc_mouse_input_button.mouseb = private unnamed_addr constant [6 x i8] c"\1B[M\00\00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @sc_mouse_input_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc_mouse_input_button(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [6 x i8], align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = bitcast [6 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.sc_mouse_input_button.mouseb, i32 0, i32 0), i64 6, i1 false)
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 32, %7
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 3
  store i8 %9, i8* %10, align 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = srem i32 %14, %18
  %20 = add nsw i32 33, %19
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 4
  store i8 %21, i8* %22, align 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = sdiv i32 %26, %30
  %32 = add nsw i32 33, %31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 5
  store i8 %33, i8* %34, align 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %37 = call i32 @sc_respond(%struct.TYPE_4__* %35, i8* %36, i32 6, i32 1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sc_respond(%struct.TYPE_4__*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
