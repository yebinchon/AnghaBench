; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vnode_pager.c_vnode_pager_generic_getpages_done_async.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vnode_pager.c_vnode_pager_generic_getpages_done_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, i32, i32*, i32**, i32, i32 (i32, i32**, i32, i32)* }

@vnode_pbuf_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*)* @vnode_pager_generic_getpages_done_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnode_pager_generic_getpages_done_async(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %2, align 8
  %5 = load %struct.buf*, %struct.buf** %2, align 8
  %6 = call i32 @vnode_pager_generic_getpages_done(%struct.buf* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.buf*, %struct.buf** %2, align 8
  %8 = getelementptr inbounds %struct.buf, %struct.buf* %7, i32 0, i32 6
  %9 = load i32 (i32, i32**, i32, i32)*, i32 (i32, i32**, i32, i32)** %8, align 8
  %10 = load %struct.buf*, %struct.buf** %2, align 8
  %11 = getelementptr inbounds %struct.buf, %struct.buf* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.buf*, %struct.buf** %2, align 8
  %14 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 4
  %15 = load i32**, i32*** %14, align 8
  %16 = load %struct.buf*, %struct.buf** %2, align 8
  %17 = getelementptr inbounds %struct.buf, %struct.buf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %15, i64 %19
  %21 = load %struct.buf*, %struct.buf** %2, align 8
  %22 = getelementptr inbounds %struct.buf, %struct.buf* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.buf*, %struct.buf** %2, align 8
  %25 = getelementptr inbounds %struct.buf, %struct.buf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %23, %26
  %28 = load %struct.buf*, %struct.buf** %2, align 8
  %29 = getelementptr inbounds %struct.buf, %struct.buf* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %27, %30
  %32 = load i32, i32* %3, align 4
  %33 = call i32 %9(i32 %12, i32** %20, i32 %31, i32 %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %47, %1
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.buf*, %struct.buf** %2, align 8
  %37 = getelementptr inbounds %struct.buf, %struct.buf* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load %struct.buf*, %struct.buf** %2, align 8
  %42 = getelementptr inbounds %struct.buf, %struct.buf* %41, i32 0, i32 4
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %34

50:                                               ; preds = %34
  %51 = load %struct.buf*, %struct.buf** %2, align 8
  %52 = getelementptr inbounds %struct.buf, %struct.buf* %51, i32 0, i32 3
  store i32* null, i32** %52, align 8
  %53 = load %struct.buf*, %struct.buf** %2, align 8
  %54 = call i32 @pbrelbo(%struct.buf* %53)
  %55 = load i32, i32* @vnode_pbuf_zone, align 4
  %56 = load %struct.buf*, %struct.buf** %2, align 8
  %57 = call i32 @uma_zfree(i32 %55, %struct.buf* %56)
  ret void
}

declare dso_local i32 @vnode_pager_generic_getpages_done(%struct.buf*) #1

declare dso_local i32 @pbrelbo(%struct.buf*) #1

declare dso_local i32 @uma_zfree(i32, %struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
