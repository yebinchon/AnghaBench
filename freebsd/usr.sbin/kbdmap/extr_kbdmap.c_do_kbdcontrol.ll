; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kbdmap/extr_kbdmap.c_do_kbdcontrol.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kbdmap/extr_kbdmap.c_do_kbdcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keymap = type { i8* }

@.str = private unnamed_addr constant [20 x i8] c"kbdcontrol -l %s/%s\00", align 1
@dir = common dso_local global i32 0, align 4
@x11 = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"keymap=\22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.keymap*)* @do_kbdcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_kbdcontrol(%struct.keymap* %0) #0 {
  %2 = alloca %struct.keymap*, align 8
  %3 = alloca i8*, align 8
  store %struct.keymap* %0, %struct.keymap** %2, align 8
  %4 = load i32, i32* @dir, align 4
  %5 = load %struct.keymap*, %struct.keymap** %2, align 8
  %6 = getelementptr inbounds %struct.keymap, %struct.keymap* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @asprintf(i8** %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %4, i8* %7)
  %9 = load i32, i32* @x11, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @system(i8* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i32, i32* @stderr, align 4
  %16 = load %struct.keymap*, %struct.keymap** %2, align 8
  %17 = getelementptr inbounds %struct.keymap, %struct.keymap* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @free(i8* %20)
  ret void
}

declare dso_local i32 @asprintf(i8**, i8*, i32, i8*) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
