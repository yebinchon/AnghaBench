; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_tag.c_ng_tag_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_tag.c_ng_tag_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }

@M_NETGRAPH_TAG = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ng_tag_default_in = common dso_local global i32 0, align 4
@ng_tag_default_out = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @ng_tag_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_tag_newhook(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @M_NETGRAPH_TAG, align 4
  %11 = load i32, i32* @M_NOWAIT, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.TYPE_9__* @malloc(i32 16, i32 %10, i32 %13)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %8, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %16 = icmp eq %struct.TYPE_9__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  store i32 %18, i32* %4, align 4
  br label %67

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = call i32 @NG_HOOK_SET_PRIVATE(i32 %20, %struct.TYPE_9__* %21)
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @ng_tag_setdata_in(i32 %23, i32* @ng_tag_default_in)
  store i32 %24, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %28 = load i32, i32* @M_NETGRAPH_TAG, align 4
  %29 = call i32 @free(%struct.TYPE_9__* %27, i32 %28)
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %67

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @ng_tag_setdata_out(i32 %32, i32* @ng_tag_default_out)
  store i32 %33, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = load i32, i32* @M_NETGRAPH_TAG, align 4
  %38 = call i32 @free(%struct.TYPE_9__* %36, i32 %37)
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %67

40:                                               ; preds = %31
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @strncpy(i8* %45, i8* %46, i32 7)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 7
  store i8 0, i8* %53, align 1
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @strncpy(i8* %58, i8* %59, i32 7)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 7
  store i8 0, i8* %66, align 1
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %40, %35, %26, %17
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_9__* @malloc(i32, i32, i32) #1

declare dso_local i32 @NG_HOOK_SET_PRIVATE(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ng_tag_setdata_in(i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ng_tag_setdata_out(i32, i32*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
