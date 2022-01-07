; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_objhash_alloc_idx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_objhash_alloc_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namedobj_instance = type { i32*, i32*, i32 }

@BLOCK_ITEMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipfw_objhash_alloc_idx(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.namedobj_instance*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.namedobj_instance*
  store %struct.namedobj_instance* %12, %struct.namedobj_instance** %6, align 8
  %13 = load %struct.namedobj_instance*, %struct.namedobj_instance** %6, align 8
  %14 = getelementptr inbounds %struct.namedobj_instance, %struct.namedobj_instance* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.namedobj_instance*, %struct.namedobj_instance** %6, align 8
  %19 = getelementptr inbounds %struct.namedobj_instance, %struct.namedobj_instance* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32* %23, i32** %7, align 8
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %58, %2
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.namedobj_instance*, %struct.namedobj_instance** %6, align 8
  %28 = getelementptr inbounds %struct.namedobj_instance, %struct.namedobj_instance* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %63

31:                                               ; preds = %25
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ffsl(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %58

37:                                               ; preds = %31
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %38, 1
  %40 = shl i32 1, %39
  %41 = xor i32 %40, -1
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %41
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.namedobj_instance*, %struct.namedobj_instance** %6, align 8
  %47 = getelementptr inbounds %struct.namedobj_instance, %struct.namedobj_instance* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* @BLOCK_ITEMS, align 4
  %51 = load i32, i32* %8, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %52, %53
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32*, i32** %5, align 8
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %3, align 4
  br label %64

58:                                               ; preds = %36
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %7, align 8
  br label %25

63:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %37
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @ffsl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
