; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_SetExpire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_SetExpire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_link = type { i32, i32 }

@LINK_PERMANENT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetExpire(%struct.alias_link* %0, i32 %1) #0 {
  %3 = alloca %struct.alias_link*, align 8
  %4 = alloca i32, align 4
  store %struct.alias_link* %0, %struct.alias_link** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load i32, i32* @LINK_PERMANENT, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.alias_link*, %struct.alias_link** %3, align 8
  %11 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.alias_link*, %struct.alias_link** %3, align 8
  %15 = call i32 @DeleteLink(%struct.alias_link* %14)
  br label %35

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* @LINK_PERMANENT, align 4
  %21 = load %struct.alias_link*, %struct.alias_link** %3, align 8
  %22 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %34

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.alias_link*, %struct.alias_link** %3, align 8
  %31 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %33

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %28
  br label %34

34:                                               ; preds = %33, %19
  br label %35

35:                                               ; preds = %34, %7
  ret void
}

declare dso_local i32 @DeleteLink(%struct.alias_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
