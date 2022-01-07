; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_pack_list_difference.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_pack_list_difference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pack_list = type { i64, %struct.pack_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pack_list* (%struct.pack_list*, %struct.pack_list*)* @pack_list_difference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pack_list* @pack_list_difference(%struct.pack_list* %0, %struct.pack_list* %1) #0 {
  %3 = alloca %struct.pack_list*, align 8
  %4 = alloca %struct.pack_list*, align 8
  %5 = alloca %struct.pack_list*, align 8
  %6 = alloca %struct.pack_list*, align 8
  %7 = alloca %struct.pack_list*, align 8
  store %struct.pack_list* %0, %struct.pack_list** %4, align 8
  store %struct.pack_list* %1, %struct.pack_list** %5, align 8
  %8 = load %struct.pack_list*, %struct.pack_list** %4, align 8
  %9 = icmp eq %struct.pack_list* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.pack_list* null, %struct.pack_list** %3, align 8
  br label %47

11:                                               ; preds = %2
  %12 = load %struct.pack_list*, %struct.pack_list** %5, align 8
  store %struct.pack_list* %12, %struct.pack_list** %7, align 8
  br label %13

13:                                               ; preds = %30, %11
  %14 = load %struct.pack_list*, %struct.pack_list** %7, align 8
  %15 = icmp ne %struct.pack_list* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = load %struct.pack_list*, %struct.pack_list** %4, align 8
  %18 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.pack_list*, %struct.pack_list** %7, align 8
  %21 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load %struct.pack_list*, %struct.pack_list** %4, align 8
  %26 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %25, i32 0, i32 1
  %27 = load %struct.pack_list*, %struct.pack_list** %26, align 8
  %28 = load %struct.pack_list*, %struct.pack_list** %5, align 8
  %29 = call %struct.pack_list* @pack_list_difference(%struct.pack_list* %27, %struct.pack_list* %28)
  store %struct.pack_list* %29, %struct.pack_list** %3, align 8
  br label %47

30:                                               ; preds = %16
  %31 = load %struct.pack_list*, %struct.pack_list** %7, align 8
  %32 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %31, i32 0, i32 1
  %33 = load %struct.pack_list*, %struct.pack_list** %32, align 8
  store %struct.pack_list* %33, %struct.pack_list** %7, align 8
  br label %13

34:                                               ; preds = %13
  %35 = call %struct.pack_list* @xmalloc(i32 16)
  store %struct.pack_list* %35, %struct.pack_list** %6, align 8
  %36 = load %struct.pack_list*, %struct.pack_list** %6, align 8
  %37 = load %struct.pack_list*, %struct.pack_list** %4, align 8
  %38 = call i32 @memcpy(%struct.pack_list* %36, %struct.pack_list* %37, i32 16)
  %39 = load %struct.pack_list*, %struct.pack_list** %4, align 8
  %40 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %39, i32 0, i32 1
  %41 = load %struct.pack_list*, %struct.pack_list** %40, align 8
  %42 = load %struct.pack_list*, %struct.pack_list** %5, align 8
  %43 = call %struct.pack_list* @pack_list_difference(%struct.pack_list* %41, %struct.pack_list* %42)
  %44 = load %struct.pack_list*, %struct.pack_list** %6, align 8
  %45 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %44, i32 0, i32 1
  store %struct.pack_list* %43, %struct.pack_list** %45, align 8
  %46 = load %struct.pack_list*, %struct.pack_list** %6, align 8
  store %struct.pack_list* %46, %struct.pack_list** %3, align 8
  br label %47

47:                                               ; preds = %34, %24, %10
  %48 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  ret %struct.pack_list* %48
}

declare dso_local %struct.pack_list* @xmalloc(i32) #1

declare dso_local i32 @memcpy(%struct.pack_list*, %struct.pack_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
