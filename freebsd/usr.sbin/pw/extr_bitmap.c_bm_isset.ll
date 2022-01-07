; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_bitmap.c_bm_isset.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_bitmap.c_bm_isset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bm_isset(%struct.bitmap* %0, i32 %1) #0 {
  %3 = alloca %struct.bitmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.bitmap* %0, %struct.bitmap** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @bm_getmask(i32* %4, i8* %5)
  %7 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %8 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* %5, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local i32 @bm_getmask(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
