; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_reapchild_conn.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_reapchild_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procinfo = type { %struct.conninfo* }
%struct.conninfo = type { i32, %struct.procinfo** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @reapchild_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reapchild_conn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.procinfo*, align 8
  %4 = alloca %struct.conninfo*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.procinfo* @search_proc(i32 %6, i32 0)
  store %struct.procinfo* %7, %struct.procinfo** %3, align 8
  %8 = icmp eq %struct.procinfo* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %59

10:                                               ; preds = %1
  %11 = load %struct.procinfo*, %struct.procinfo** %3, align 8
  %12 = getelementptr inbounds %struct.procinfo, %struct.procinfo* %11, i32 0, i32 0
  %13 = load %struct.conninfo*, %struct.conninfo** %12, align 8
  store %struct.conninfo* %13, %struct.conninfo** %4, align 8
  %14 = icmp eq %struct.conninfo* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %59

16:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %51, %16
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.conninfo*, %struct.conninfo** %4, align 8
  %20 = getelementptr inbounds %struct.conninfo, %struct.conninfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %17
  %24 = load %struct.conninfo*, %struct.conninfo** %4, align 8
  %25 = getelementptr inbounds %struct.conninfo, %struct.conninfo* %24, i32 0, i32 1
  %26 = load %struct.procinfo**, %struct.procinfo*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.procinfo*, %struct.procinfo** %26, i64 %28
  %30 = load %struct.procinfo*, %struct.procinfo** %29, align 8
  %31 = load %struct.procinfo*, %struct.procinfo** %3, align 8
  %32 = icmp eq %struct.procinfo* %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %23
  %34 = load %struct.conninfo*, %struct.conninfo** %4, align 8
  %35 = getelementptr inbounds %struct.conninfo, %struct.conninfo* %34, i32 0, i32 1
  %36 = load %struct.procinfo**, %struct.procinfo*** %35, align 8
  %37 = load %struct.conninfo*, %struct.conninfo** %4, align 8
  %38 = getelementptr inbounds %struct.conninfo, %struct.conninfo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.procinfo*, %struct.procinfo** %36, i64 %41
  %43 = load %struct.procinfo*, %struct.procinfo** %42, align 8
  %44 = load %struct.conninfo*, %struct.conninfo** %4, align 8
  %45 = getelementptr inbounds %struct.conninfo, %struct.conninfo* %44, i32 0, i32 1
  %46 = load %struct.procinfo**, %struct.procinfo*** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.procinfo*, %struct.procinfo** %46, i64 %48
  store %struct.procinfo* %43, %struct.procinfo** %49, align 8
  br label %54

50:                                               ; preds = %23
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %17

54:                                               ; preds = %33, %17
  %55 = load %struct.procinfo*, %struct.procinfo** %3, align 8
  %56 = call i32 @free_proc(%struct.procinfo* %55)
  %57 = load %struct.conninfo*, %struct.conninfo** %4, align 8
  %58 = call i32 @free_conn(%struct.conninfo* %57)
  br label %59

59:                                               ; preds = %54, %15, %9
  ret void
}

declare dso_local %struct.procinfo* @search_proc(i32, i32) #1

declare dso_local i32 @free_proc(%struct.procinfo*) #1

declare dso_local i32 @free_conn(%struct.conninfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
