; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_free_connlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_free_connlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servtab = type { i32* }
%struct.conninfo = type { i32, i32* }

@PERIPSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.servtab*)* @free_connlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_connlist(%struct.servtab* %0) #0 {
  %2 = alloca %struct.servtab*, align 8
  %3 = alloca %struct.conninfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.servtab* %0, %struct.servtab** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %45, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @PERIPSIZE, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %48

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %39, %10
  %12 = load %struct.servtab*, %struct.servtab** %2, align 8
  %13 = getelementptr inbounds %struct.servtab, %struct.servtab* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = call %struct.conninfo* @LIST_FIRST(i32* %17)
  store %struct.conninfo* %18, %struct.conninfo** %3, align 8
  %19 = icmp ne %struct.conninfo* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %36, %20
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.conninfo*, %struct.conninfo** %3, align 8
  %24 = getelementptr inbounds %struct.conninfo, %struct.conninfo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load %struct.conninfo*, %struct.conninfo** %3, align 8
  %29 = getelementptr inbounds %struct.conninfo, %struct.conninfo* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @free_proc(i32 %34)
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %21

39:                                               ; preds = %21
  %40 = load %struct.conninfo*, %struct.conninfo** %3, align 8
  %41 = getelementptr inbounds %struct.conninfo, %struct.conninfo* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.conninfo*, %struct.conninfo** %3, align 8
  %43 = call i32 @free_conn(%struct.conninfo* %42)
  br label %11

44:                                               ; preds = %11
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %6

48:                                               ; preds = %6
  ret void
}

declare dso_local %struct.conninfo* @LIST_FIRST(i32*) #1

declare dso_local i32 @free_proc(i32) #1

declare dso_local i32 @free_conn(%struct.conninfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
