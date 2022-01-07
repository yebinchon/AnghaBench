; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_iscsi_subr.c_i_pdu_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_iscsi_subr.c_i_pdu_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"%d pdus recovered, should have been ZERO!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_pdu_flush(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = call i32 @debug_called(i32 8)
  br label %6

6:                                                ; preds = %10, %1
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = call i32* @i_dqueue_rsp(%struct.TYPE_8__* %7)
  store i32* %8, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @pdu_free(i32 %13, i32* %14)
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %6

18:                                               ; preds = %6
  br label %19

19:                                               ; preds = %23, %18
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = call i32* @i_dqueue_rsv(%struct.TYPE_8__* %20)
  store i32* %21, i32** %4, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @pdu_free(i32 %26, i32* %27)
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %19

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %36, %31
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = call i32* @i_dqueue_snd(%struct.TYPE_8__* %33, i32 -1)
  store i32* %34, i32** %4, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @pdu_free(i32 %39, i32* %40)
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %32

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %49, %44
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %47 = call i32* @i_dqueue_hld(%struct.TYPE_8__* %46)
  store i32* %47, i32** %4, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @pdu_free(i32 %52, i32* %53)
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %45

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %62, %57
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %60 = call i32* @i_dqueue_wsnd(%struct.TYPE_8__* %59)
  store i32* %60, i32** %4, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @pdu_free(i32 %65, i32* %66)
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %58

70:                                               ; preds = %58
  %71 = load i32, i32* %3, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @xdebug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32* @i_dqueue_rsp(%struct.TYPE_8__*) #1

declare dso_local i32 @pdu_free(i32, i32*) #1

declare dso_local i32* @i_dqueue_rsv(%struct.TYPE_8__*) #1

declare dso_local i32* @i_dqueue_snd(%struct.TYPE_8__*, i32) #1

declare dso_local i32* @i_dqueue_hld(%struct.TYPE_8__*) #1

declare dso_local i32* @i_dqueue_wsnd(%struct.TYPE_8__*) #1

declare dso_local i32 @xdebug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
