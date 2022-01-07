; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_hook_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_hook_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linkinfo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @hook_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hook_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.linkinfo*, align 8
  %7 = alloca %struct.linkinfo*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.linkinfo*
  store %struct.linkinfo* %9, %struct.linkinfo** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.linkinfo*
  store %struct.linkinfo* %11, %struct.linkinfo** %7, align 8
  %12 = load %struct.linkinfo*, %struct.linkinfo** %6, align 8
  %13 = getelementptr inbounds %struct.linkinfo, %struct.linkinfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @strlen(i32 %14)
  %16 = load %struct.linkinfo*, %struct.linkinfo** %7, align 8
  %17 = getelementptr inbounds %struct.linkinfo, %struct.linkinfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @strlen(i32 %18)
  %20 = icmp slt i64 %15, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %41

22:                                               ; preds = %2
  %23 = load %struct.linkinfo*, %struct.linkinfo** %6, align 8
  %24 = getelementptr inbounds %struct.linkinfo, %struct.linkinfo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @strlen(i32 %25)
  %27 = load %struct.linkinfo*, %struct.linkinfo** %7, align 8
  %28 = getelementptr inbounds %struct.linkinfo, %struct.linkinfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @strlen(i32 %29)
  %31 = icmp sgt i64 %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %41

33:                                               ; preds = %22
  %34 = load %struct.linkinfo*, %struct.linkinfo** %6, align 8
  %35 = getelementptr inbounds %struct.linkinfo, %struct.linkinfo* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.linkinfo*, %struct.linkinfo** %7, align 8
  %38 = getelementptr inbounds %struct.linkinfo, %struct.linkinfo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strcmp(i32 %36, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %33, %32, %21
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
