; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_llatbl.c_lltable_allocate_htbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_llatbl.c_lltable_allocate_htbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lltable = type { i32, i32, i32, i32, i32, i32, i32* }

@M_LLTABLE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@htable_link_entry = common dso_local global i32 0, align 4
@htable_unlink_entry = common dso_local global i32 0, align 4
@htable_prefix_free = common dso_local global i32 0, align 4
@htable_foreach_lle = common dso_local global i32 0, align 4
@htable_free_tbl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lltable* @lltable_allocate_htbl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lltable*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @M_LLTABLE, align 4
  %6 = load i32, i32* @M_WAITOK, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call i8* @malloc(i32 32, i32 %5, i32 %8)
  %10 = bitcast i8* %9 to %struct.lltable*
  store %struct.lltable* %10, %struct.lltable** %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = load %struct.lltable*, %struct.lltable** %3, align 8
  %13 = getelementptr inbounds %struct.lltable, %struct.lltable* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @M_LLTABLE, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = load i32, i32* @M_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call i8* @malloc(i32 %17, i32 %18, i32 %21)
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.lltable*, %struct.lltable** %3, align 8
  %25 = getelementptr inbounds %struct.lltable, %struct.lltable* %24, i32 0, i32 6
  store i32* %23, i32** %25, align 8
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %40, %1
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.lltable*, %struct.lltable** %3, align 8
  %29 = getelementptr inbounds %struct.lltable, %struct.lltable* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load %struct.lltable*, %struct.lltable** %3, align 8
  %34 = getelementptr inbounds %struct.lltable, %struct.lltable* %33, i32 0, i32 6
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @CK_LIST_INIT(i32* %38)
  br label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %26

43:                                               ; preds = %26
  %44 = load i32, i32* @htable_link_entry, align 4
  %45 = load %struct.lltable*, %struct.lltable** %3, align 8
  %46 = getelementptr inbounds %struct.lltable, %struct.lltable* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @htable_unlink_entry, align 4
  %48 = load %struct.lltable*, %struct.lltable** %3, align 8
  %49 = getelementptr inbounds %struct.lltable, %struct.lltable* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @htable_prefix_free, align 4
  %51 = load %struct.lltable*, %struct.lltable** %3, align 8
  %52 = getelementptr inbounds %struct.lltable, %struct.lltable* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @htable_foreach_lle, align 4
  %54 = load %struct.lltable*, %struct.lltable** %3, align 8
  %55 = getelementptr inbounds %struct.lltable, %struct.lltable* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @htable_free_tbl, align 4
  %57 = load %struct.lltable*, %struct.lltable** %3, align 8
  %58 = getelementptr inbounds %struct.lltable, %struct.lltable* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.lltable*, %struct.lltable** %3, align 8
  ret %struct.lltable* %59
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @CK_LIST_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
