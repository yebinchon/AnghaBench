; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/extr_ngatmbase.c_uni_msg_extend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/extr_ngatmbase.c_uni_msg_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_msg = type { i32*, i32*, i32*, i32* }

@EXTRA = common dso_local global i64 0, align 8
@M_UNIMSG = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uni_msg_extend(%struct.uni_msg* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uni_msg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.uni_msg* %0, %struct.uni_msg** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %10 = call i64 @uni_msg_leading(%struct.uni_msg* %9)
  store i64 %10, i64* %8, align 8
  %11 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %12 = call i64 @uni_msg_len(%struct.uni_msg* %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = add i64 %13, %14
  %16 = load i64, i64* @EXTRA, align 8
  %17 = add i64 %15, %16
  %18 = load i64, i64* %5, align 8
  %19 = add i64 %18, %17
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* @M_UNIMSG, align 4
  %22 = load i32, i32* @M_NOWAIT, align 4
  %23 = call i32* @malloc(i64 %20, i32 %21, i32 %22)
  store i32* %23, i32** %6, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %27 = call i32 @uni_msg_destroy(%struct.uni_msg* %26)
  %28 = load i32, i32* @ENOMEM, align 4
  store i32 %28, i32* %3, align 4
  br label %67

29:                                               ; preds = %2
  %30 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %31 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @bcopy(i32* %32, i32* %35, i64 %36)
  %38 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %39 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @M_UNIMSG, align 4
  %42 = call i32 @free(i32* %40, i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %45 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %44, i32 0, i32 0
  store i32* %43, i32** %45, align 8
  %46 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %47 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %52 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  %53 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %54 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %59 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %58, i32 0, i32 3
  store i32* %57, i32** %59, align 8
  %60 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %61 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %66 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %65, i32 0, i32 1
  store i32* %64, i32** %66, align 8
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %29, %25
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @uni_msg_leading(%struct.uni_msg*) #1

declare dso_local i64 @uni_msg_len(%struct.uni_msg*) #1

declare dso_local i32* @malloc(i64, i32, i32) #1

declare dso_local i32 @uni_msg_destroy(%struct.uni_msg*) #1

declare dso_local i32 @bcopy(i32*, i32*, i64) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
