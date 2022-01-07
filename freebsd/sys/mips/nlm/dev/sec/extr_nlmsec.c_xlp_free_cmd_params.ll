; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmsec.c_xlp_free_cmd_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmsec.c_xlp_free_cmd_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlp_sec_command = type { %struct.xlp_sec_command*, %struct.xlp_sec_command*, %struct.xlp_sec_command*, %struct.xlp_sec_command* }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlp_sec_command*)* @xlp_free_cmd_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp_free_cmd_params(%struct.xlp_sec_command* %0) #0 {
  %2 = alloca %struct.xlp_sec_command*, align 8
  store %struct.xlp_sec_command* %0, %struct.xlp_sec_command** %2, align 8
  %3 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %2, align 8
  %4 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %3, i32 0, i32 3
  %5 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %6 = icmp ne %struct.xlp_sec_command* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %2, align 8
  %9 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %8, i32 0, i32 3
  %10 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %9, align 8
  %11 = load i32, i32* @M_DEVBUF, align 4
  %12 = call i32 @free(%struct.xlp_sec_command* %10, i32 %11)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %2, align 8
  %15 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %14, i32 0, i32 2
  %16 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %15, align 8
  %17 = icmp ne %struct.xlp_sec_command* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %2, align 8
  %20 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %19, i32 0, i32 2
  %21 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %20, align 8
  %22 = load i32, i32* @M_DEVBUF, align 4
  %23 = call i32 @free(%struct.xlp_sec_command* %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %13
  %25 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %2, align 8
  %26 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %25, i32 0, i32 1
  %27 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %26, align 8
  %28 = icmp ne %struct.xlp_sec_command* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %2, align 8
  %31 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %30, i32 0, i32 1
  %32 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %31, align 8
  %33 = load i32, i32* @M_DEVBUF, align 4
  %34 = call i32 @free(%struct.xlp_sec_command* %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %24
  %36 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %2, align 8
  %37 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %36, i32 0, i32 0
  %38 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %37, align 8
  %39 = icmp ne %struct.xlp_sec_command* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %2, align 8
  %42 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %41, i32 0, i32 0
  %43 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %42, align 8
  %44 = load i32, i32* @M_DEVBUF, align 4
  %45 = call i32 @free(%struct.xlp_sec_command* %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %35
  %47 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %2, align 8
  %48 = icmp ne %struct.xlp_sec_command* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %2, align 8
  %51 = load i32, i32* @M_DEVBUF, align 4
  %52 = call i32 @free(%struct.xlp_sec_command* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %46
  ret void
}

declare dso_local i32 @free(%struct.xlp_sec_command*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
