; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_pdu.c_pdu_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_pdu.c_pdu_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdu = type { %struct.connection*, i32* }
%struct.connection = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pdu* @pdu_new(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.pdu*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %4 = call i8* @calloc(i32 1, i32 16)
  %5 = bitcast i8* %4 to %struct.pdu*
  store %struct.pdu* %5, %struct.pdu** %3, align 8
  %6 = load %struct.pdu*, %struct.pdu** %3, align 8
  %7 = icmp eq %struct.pdu* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = call i8* @calloc(i32 1, i32 4)
  %12 = bitcast i8* %11 to i32*
  %13 = load %struct.pdu*, %struct.pdu** %3, align 8
  %14 = getelementptr inbounds %struct.pdu, %struct.pdu* %13, i32 0, i32 1
  store i32* %12, i32** %14, align 8
  %15 = load %struct.pdu*, %struct.pdu** %3, align 8
  %16 = getelementptr inbounds %struct.pdu, %struct.pdu* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %10
  %22 = load %struct.connection*, %struct.connection** %2, align 8
  %23 = load %struct.pdu*, %struct.pdu** %3, align 8
  %24 = getelementptr inbounds %struct.pdu, %struct.pdu* %23, i32 0, i32 0
  store %struct.connection* %22, %struct.connection** %24, align 8
  %25 = load %struct.pdu*, %struct.pdu** %3, align 8
  ret %struct.pdu* %25
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @log_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
