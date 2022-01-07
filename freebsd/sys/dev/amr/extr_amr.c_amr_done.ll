; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { i32, %struct.amr_command**, i64 (%struct.amr_softc*, %struct.amr_mailbox*)* }
%struct.amr_command = type { i32 }
%struct.amr_mailbox = type opaque
%struct.amr_mailbox.0 = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [33 x i8] c"completed command with status %x\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"bad slot %d completed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amr_done(%struct.amr_softc* %0) #0 {
  %2 = alloca %struct.amr_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.amr_command*, align 8
  %5 = alloca %struct.amr_mailbox.0, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amr_softc* %0, %struct.amr_softc** %2, align 8
  %9 = call i32 @debug_called(i32 3)
  store i32 0, i32* %8, align 4
  %10 = call i32 @amr_init_qhead(i32* %3)
  br label %11

11:                                               ; preds = %66, %1
  %12 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %13 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %12, i32 0, i32 2
  %14 = load i64 (%struct.amr_softc*, %struct.amr_mailbox*)*, i64 (%struct.amr_softc*, %struct.amr_mailbox*)** %13, align 8
  %15 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %16 = bitcast %struct.amr_mailbox.0* %5 to %struct.amr_mailbox*
  %17 = call i64 %14(%struct.amr_softc* %15, %struct.amr_mailbox* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %11
  store i32 1, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %61, %19
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds %struct.amr_mailbox.0, %struct.amr_mailbox.0* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %64

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.amr_mailbox.0, %struct.amr_mailbox.0* %5, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  %33 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %34 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %33, i32 0, i32 1
  %35 = load %struct.amr_command**, %struct.amr_command*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.amr_command*, %struct.amr_command** %35, i64 %37
  %39 = load %struct.amr_command*, %struct.amr_command** %38, align 8
  store %struct.amr_command* %39, %struct.amr_command** %4, align 8
  %40 = load %struct.amr_command*, %struct.amr_command** %4, align 8
  %41 = icmp ne %struct.amr_command* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %25
  %43 = load %struct.amr_command*, %struct.amr_command** %4, align 8
  %44 = call i32 @amr_freeslot(%struct.amr_command* %43)
  %45 = getelementptr inbounds %struct.amr_mailbox.0, %struct.amr_mailbox.0* %5, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.amr_command*, %struct.amr_command** %4, align 8
  %48 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.amr_command*, %struct.amr_command** %4, align 8
  %50 = call i32 @amr_enqueue_completed(%struct.amr_command* %49, i32* %3)
  %51 = getelementptr inbounds %struct.amr_mailbox.0, %struct.amr_mailbox.0* %5, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @debug(i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %60

54:                                               ; preds = %25
  %55 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %56 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %54, %42
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %20

64:                                               ; preds = %20
  br label %66

65:                                               ; preds = %11
  br label %67

66:                                               ; preds = %64
  br label %11

67:                                               ; preds = %65
  %68 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %69 = call i32 @amr_complete(%struct.amr_softc* %68, i32* %3)
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @amr_init_qhead(i32*) #1

declare dso_local i32 @amr_freeslot(%struct.amr_command*) #1

declare dso_local i32 @amr_enqueue_completed(%struct.amr_command*, i32*) #1

declare dso_local i32 @debug(i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @amr_complete(%struct.amr_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
