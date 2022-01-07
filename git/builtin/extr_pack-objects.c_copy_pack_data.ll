; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_copy_pack_data.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_copy_pack_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashfile = type { i32 }
%struct.packed_git = type { i32 }
%struct.pack_window = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hashfile*, %struct.packed_git*, %struct.pack_window**, i64, i64)* @copy_pack_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_pack_data(%struct.hashfile* %0, %struct.packed_git* %1, %struct.pack_window** %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.hashfile*, align 8
  %7 = alloca %struct.packed_git*, align 8
  %8 = alloca %struct.pack_window**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.hashfile* %0, %struct.hashfile** %6, align 8
  store %struct.packed_git* %1, %struct.packed_git** %7, align 8
  store %struct.pack_window** %2, %struct.pack_window*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  br label %13

13:                                               ; preds = %26, %5
  %14 = load i64, i64* %10, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %18 = load %struct.pack_window**, %struct.pack_window*** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i8* @use_pack(%struct.packed_git* %17, %struct.pack_window** %18, i64 %19, i64* %12)
  store i8* %20, i8** %11, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i64, i64* %10, align 8
  store i64 %25, i64* %12, align 8
  br label %26

26:                                               ; preds = %24, %16
  %27 = load %struct.hashfile*, %struct.hashfile** %6, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load i64, i64* %12, align 8
  %30 = call i32 @hashwrite(%struct.hashfile* %27, i8* %28, i64 %29)
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %9, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %10, align 8
  %36 = sub i64 %35, %34
  store i64 %36, i64* %10, align 8
  br label %13

37:                                               ; preds = %13
  ret void
}

declare dso_local i8* @use_pack(%struct.packed_git*, %struct.pack_window**, i64, i64*) #1

declare dso_local i32 @hashwrite(%struct.hashfile*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
