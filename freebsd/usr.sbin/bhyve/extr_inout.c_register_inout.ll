; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_inout.c_register_inout.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_inout.c_register_inout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.inout_port = type { i32, i32, i32, i32, i32, i32 }

@IOPORT_F_DEFAULT = common dso_local global i32 0, align 4
@inout_handlers = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_inout(%struct.inout_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inout_port*, align 8
  %4 = alloca i32, align 4
  store %struct.inout_port* %0, %struct.inout_port** %3, align 8
  %5 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %6 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %9 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @VERIFY_IOPORT(i32 %7, i32 %10)
  %12 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %13 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IOPORT_F_DEFAULT, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %1
  %19 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %20 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %44, %18
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %25 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %28 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  %31 = icmp slt i32 %23, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %22
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inout_handlers, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IOPORT_F_DEFAULT, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i32 -1, i32* %2, align 4
  br label %99

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %22

47:                                               ; preds = %22
  br label %48

48:                                               ; preds = %47, %1
  %49 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %50 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %95, %48
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %55 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %58 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  %61 = icmp slt i32 %53, %60
  br i1 %61, label %62, label %98

62:                                               ; preds = %52
  %63 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %64 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inout_handlers, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  store i32 %65, i32* %70, align 4
  %71 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %72 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inout_handlers, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 %73, i32* %78, align 4
  %79 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %80 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inout_handlers, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  store i32 %81, i32* %86, align 4
  %87 = load %struct.inout_port*, %struct.inout_port** %3, align 8
  %88 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inout_handlers, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i32 %89, i32* %94, align 4
  br label %95

95:                                               ; preds = %62
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %52

98:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %42
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @VERIFY_IOPORT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
