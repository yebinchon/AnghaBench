; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_newsyslog.c_free_clist.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_newsyslog.c_free_clist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflist = type { i32 }
%struct.conf_entry = type { i32 }

@cf_nextp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cflist*)* @free_clist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_clist(%struct.cflist* %0) #0 {
  %2 = alloca %struct.cflist*, align 8
  %3 = alloca %struct.conf_entry*, align 8
  store %struct.cflist* %0, %struct.cflist** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.cflist*, %struct.cflist** %2, align 8
  %6 = call i32 @STAILQ_EMPTY(%struct.cflist* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = load %struct.cflist*, %struct.cflist** %2, align 8
  %11 = call %struct.conf_entry* @STAILQ_FIRST(%struct.cflist* %10)
  store %struct.conf_entry* %11, %struct.conf_entry** %3, align 8
  %12 = load %struct.cflist*, %struct.cflist** %2, align 8
  %13 = load i32, i32* @cf_nextp, align 4
  %14 = call i32 @STAILQ_REMOVE_HEAD(%struct.cflist* %12, i32 %13)
  %15 = load %struct.conf_entry*, %struct.conf_entry** %3, align 8
  %16 = call i32 @free_entry(%struct.conf_entry* %15)
  br label %4

17:                                               ; preds = %4
  %18 = load %struct.cflist*, %struct.cflist** %2, align 8
  %19 = call i32 @free(%struct.cflist* %18)
  store %struct.cflist* null, %struct.cflist** %2, align 8
  ret void
}

declare dso_local i32 @STAILQ_EMPTY(%struct.cflist*) #1

declare dso_local %struct.conf_entry* @STAILQ_FIRST(%struct.cflist*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(%struct.cflist*, i32) #1

declare dso_local i32 @free_entry(%struct.conf_entry*) #1

declare dso_local i32 @free(%struct.cflist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
