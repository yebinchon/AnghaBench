; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_arg.c_audit_arg_vnode1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_arg.c_audit_arg_vnode1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.kaudit_record = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ARG_VNODE1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_arg_vnode1(%struct.vnode* %0) #0 {
  %2 = alloca %struct.vnode*, align 8
  %3 = alloca %struct.kaudit_record*, align 8
  %4 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %2, align 8
  %5 = call %struct.kaudit_record* (...) @currecord()
  store %struct.kaudit_record* %5, %struct.kaudit_record** %3, align 8
  %6 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %7 = icmp eq %struct.kaudit_record* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %24

9:                                                ; preds = %1
  %10 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %11 = load i32, i32* @ARG_VNODE1, align 4
  %12 = call i32 @ARG_CLEAR_VALID(%struct.kaudit_record* %10, i32 %11)
  %13 = load %struct.vnode*, %struct.vnode** %2, align 8
  %14 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %15 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @audit_arg_vnode(%struct.vnode* %13, i32* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %9
  %21 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %22 = load i32, i32* @ARG_VNODE1, align 4
  %23 = call i32 @ARG_SET_VALID(%struct.kaudit_record* %21, i32 %22)
  br label %24

24:                                               ; preds = %8, %20, %9
  ret void
}

declare dso_local %struct.kaudit_record* @currecord(...) #1

declare dso_local i32 @ARG_CLEAR_VALID(%struct.kaudit_record*, i32) #1

declare dso_local i32 @audit_arg_vnode(%struct.vnode*, i32*) #1

declare dso_local i32 @ARG_SET_VALID(%struct.kaudit_record*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
