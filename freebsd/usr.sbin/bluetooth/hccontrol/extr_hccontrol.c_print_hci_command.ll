; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_hccontrol.c_print_hci_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_hccontrol.c_print_hci_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_command = type { i8* }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_command*)* @print_hci_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_hci_command(%struct.hci_command* %0) #0 {
  %2 = alloca %struct.hci_command*, align 8
  %3 = alloca %struct.hci_command*, align 8
  store %struct.hci_command* %0, %struct.hci_command** %2, align 8
  store %struct.hci_command* null, %struct.hci_command** %3, align 8
  %4 = load %struct.hci_command*, %struct.hci_command** %2, align 8
  store %struct.hci_command* %4, %struct.hci_command** %3, align 8
  br label %5

5:                                                ; preds = %16, %1
  %6 = load %struct.hci_command*, %struct.hci_command** %3, align 8
  %7 = getelementptr inbounds %struct.hci_command, %struct.hci_command* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = load i32, i32* @stdout, align 4
  %12 = load %struct.hci_command*, %struct.hci_command** %3, align 8
  %13 = getelementptr inbounds %struct.hci_command, %struct.hci_command* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %10
  %17 = load %struct.hci_command*, %struct.hci_command** %3, align 8
  %18 = getelementptr inbounds %struct.hci_command, %struct.hci_command* %17, i32 1
  store %struct.hci_command* %18, %struct.hci_command** %3, align 8
  br label %5

19:                                               ; preds = %5
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
