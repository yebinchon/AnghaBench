; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/bt3c/extr_ng_bt3c_pccard.c_bt3c_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/bt3c/extr_ng_bt3c_pccard.c_bt3c_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"%s: bogus interrupt\0A\00", align 1
@NG_BT3C_NODE_TYPE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"control=%#x, status=%#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Strange status=%#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bt3c_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt3c_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = icmp eq %struct.TYPE_7__* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10, %1
  %16 = load i8*, i8** @NG_BT3C_NODE_TYPE, align 8
  %17 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %71

18:                                               ; preds = %10
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @bt3c_read_control(%struct.TYPE_7__* %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 128
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %71

26:                                               ; preds = %18
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @bt3c_read(%struct.TYPE_7__* %27, i32 28673, i32 %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @NG_BT3C_INFO(i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 255
  %38 = icmp eq i32 %37, 127
  br i1 %38, label %43, label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 255
  %42 = icmp eq i32 %41, 255
  br i1 %42, label %43, label %49

43:                                               ; preds = %39, %26
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @NG_BT3C_WARN(i32 %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %71

49:                                               ; preds = %39
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = call i32 @bt3c_receive(%struct.TYPE_7__* %54)
  br label %56

56:                                               ; preds = %53, %49
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @swi_sched(i32* %64, i32 0)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = call i32 @bt3c_write(%struct.TYPE_7__* %66, i32 28673, i32 0)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @bt3c_write_control(%struct.TYPE_7__* %68, i32 %69)
  br label %71

71:                                               ; preds = %56, %43, %25, %15
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @bt3c_read_control(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @bt3c_read(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @NG_BT3C_INFO(i32, i8*, i32, i32) #1

declare dso_local i32 @NG_BT3C_WARN(i32, i8*, i32) #1

declare dso_local i32 @bt3c_receive(%struct.TYPE_7__*) #1

declare dso_local i32 @swi_sched(i32*, i32) #1

declare dso_local i32 @bt3c_write(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @bt3c_write_control(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
