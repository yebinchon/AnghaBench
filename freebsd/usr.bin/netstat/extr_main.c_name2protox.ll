; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_main.c_name2protox.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_main.c_name2protox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protox = type { i32 }
%struct.protoent = type { i8**, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.protox* (i8*)* @name2protox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.protox* @name2protox(i8* %0) #0 {
  %2 = alloca %struct.protox*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.protox*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.protoent*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.protox* @knownname(i8* %7)
  store %struct.protox* %8, %struct.protox** %4, align 8
  %9 = icmp ne %struct.protox* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load %struct.protox*, %struct.protox** %4, align 8
  store %struct.protox* %11, %struct.protox** %2, align 8
  br label %44

12:                                               ; preds = %1
  %13 = call i32 @setprotoent(i32 1)
  br label %14

14:                                               ; preds = %41, %12
  %15 = call %struct.protoent* (...) @getprotoent()
  store %struct.protoent* %15, %struct.protoent** %6, align 8
  %16 = icmp ne %struct.protoent* %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  %18 = load %struct.protoent*, %struct.protoent** %6, align 8
  %19 = getelementptr inbounds %struct.protoent, %struct.protoent* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  store i8** %20, i8*** %5, align 8
  br label %21

21:                                               ; preds = %38, %17
  %22 = load i8**, i8*** %5, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = load i8*, i8** %3, align 8
  %27 = load i8**, i8*** %5, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcmp(i8* %26, i8* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = call i32 (...) @endprotoent()
  %33 = load %struct.protoent*, %struct.protoent** %6, align 8
  %34 = getelementptr inbounds %struct.protoent, %struct.protoent* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call %struct.protox* @knownname(i8* %35)
  store %struct.protox* %36, %struct.protox** %2, align 8
  br label %44

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i32 1
  store i8** %40, i8*** %5, align 8
  br label %21

41:                                               ; preds = %21
  br label %14

42:                                               ; preds = %14
  %43 = call i32 (...) @endprotoent()
  store %struct.protox* null, %struct.protox** %2, align 8
  br label %44

44:                                               ; preds = %42, %31, %10
  %45 = load %struct.protox*, %struct.protox** %2, align 8
  ret %struct.protox* %45
}

declare dso_local %struct.protox* @knownname(i8*) #1

declare dso_local i32 @setprotoent(i32) #1

declare dso_local %struct.protoent* @getprotoent(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @endprotoent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
