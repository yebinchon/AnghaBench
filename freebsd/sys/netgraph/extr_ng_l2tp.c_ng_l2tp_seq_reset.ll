; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_l2tp.c_ng_l2tp_seq_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_l2tp.c_ng_l2tp_seq_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.l2tp_seq }
%struct.l2tp_seq = type { i32, i32, i32, i32**, i64, i64, i64, i64, i64, i64, i32, i32 }

@L2TP_MAX_XWIN = common dso_local global i32 0, align 4
@ng_l2tp_reset_session = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @ng_l2tp_seq_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ng_l2tp_seq_reset(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.l2tp_seq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store %struct.l2tp_seq* %7, %struct.l2tp_seq** %3, align 8
  %8 = load %struct.l2tp_seq*, %struct.l2tp_seq** %3, align 8
  %9 = call i32 @L2TP_SEQ_CHECK(%struct.l2tp_seq* %8)
  %10 = load %struct.l2tp_seq*, %struct.l2tp_seq** %3, align 8
  %11 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %10, i32 0, i32 11
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ng_uncallout(i32* %11, i32 %14)
  %16 = load %struct.l2tp_seq*, %struct.l2tp_seq** %3, align 8
  %17 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %16, i32 0, i32 10
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ng_uncallout(i32* %17, i32 %20)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %45, %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @L2TP_MAX_XWIN, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load %struct.l2tp_seq*, %struct.l2tp_seq** %3, align 8
  %28 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %27, i32 0, i32 3
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %48

36:                                               ; preds = %26
  %37 = load %struct.l2tp_seq*, %struct.l2tp_seq** %3, align 8
  %38 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %37, i32 0, i32 3
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @m_freem(i32* %43)
  br label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %22

48:                                               ; preds = %35, %22
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ng_l2tp_reset_session, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @NG_NODE_FOREACH_HOOK(i32 %51, i32 %52, i32* null, i32 %53)
  %55 = load %struct.l2tp_seq*, %struct.l2tp_seq** %3, align 8
  %56 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %55, i32 0, i32 9
  store i64 0, i64* %56, align 8
  %57 = load %struct.l2tp_seq*, %struct.l2tp_seq** %3, align 8
  %58 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %57, i32 0, i32 8
  store i64 0, i64* %58, align 8
  %59 = load %struct.l2tp_seq*, %struct.l2tp_seq** %3, align 8
  %60 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %59, i32 0, i32 7
  store i64 0, i64* %60, align 8
  %61 = load %struct.l2tp_seq*, %struct.l2tp_seq** %3, align 8
  %62 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %61, i32 0, i32 6
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* @L2TP_MAX_XWIN, align 4
  %64 = load %struct.l2tp_seq*, %struct.l2tp_seq** %3, align 8
  %65 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.l2tp_seq*, %struct.l2tp_seq** %3, align 8
  %67 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load %struct.l2tp_seq*, %struct.l2tp_seq** %3, align 8
  %69 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.l2tp_seq*, %struct.l2tp_seq** %3, align 8
  %72 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.l2tp_seq*, %struct.l2tp_seq** %3, align 8
  %74 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %73, i32 0, i32 5
  store i64 0, i64* %74, align 8
  %75 = load %struct.l2tp_seq*, %struct.l2tp_seq** %3, align 8
  %76 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %75, i32 0, i32 4
  store i64 0, i64* %76, align 8
  %77 = load %struct.l2tp_seq*, %struct.l2tp_seq** %3, align 8
  %78 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %77, i32 0, i32 3
  %79 = load i32**, i32*** %78, align 8
  %80 = call i32 @bzero(i32** %79, i32 8)
  %81 = load %struct.l2tp_seq*, %struct.l2tp_seq** %3, align 8
  %82 = call i32 @L2TP_SEQ_CHECK(%struct.l2tp_seq* %81)
  ret void
}

declare dso_local i32 @L2TP_SEQ_CHECK(%struct.l2tp_seq*) #1

declare dso_local i32 @ng_uncallout(i32*, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @NG_NODE_FOREACH_HOOK(i32, i32, i32*, i32) #1

declare dso_local i32 @bzero(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
