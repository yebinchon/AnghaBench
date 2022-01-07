; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/bluetooth/bthost/extr_bthost.c_protomode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/bluetooth/bthost/extr_bthost.c_protomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protoent = type { i8*, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s: Unknown Protocol/Service Multiplexor\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Protocol/Service Multiplexor %s has number %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @protomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @protomode(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.protoent*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.protoent* null, %struct.protoent** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @atoi(i8* %8)
  store i32 %9, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.protoent* @bt_getprotobynumber(i32 %12)
  store %struct.protoent* %13, %struct.protoent** %6, align 8
  br label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call %struct.protoent* @bt_getprotobyname(i8* %15)
  store %struct.protoent* %16, %struct.protoent** %6, align 8
  br label %17

17:                                               ; preds = %14, %11
  %18 = load %struct.protoent*, %struct.protoent** %6, align 8
  %19 = icmp eq %struct.protoent* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @stderr, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 1, i32* %3, align 4
  br label %50

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.protoent*, %struct.protoent** %6, align 8
  %32 = getelementptr inbounds %struct.protoent, %struct.protoent* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %40

35:                                               ; preds = %27
  %36 = load %struct.protoent*, %struct.protoent** %6, align 8
  %37 = getelementptr inbounds %struct.protoent, %struct.protoent* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %35, %30
  br label %49

41:                                               ; preds = %24
  %42 = load %struct.protoent*, %struct.protoent** %6, align 8
  %43 = getelementptr inbounds %struct.protoent, %struct.protoent* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.protoent*, %struct.protoent** %6, align 8
  %46 = getelementptr inbounds %struct.protoent, %struct.protoent* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %44, i32 %47)
  br label %49

49:                                               ; preds = %41, %40
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %20
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.protoent* @bt_getprotobynumber(i32) #1

declare dso_local %struct.protoent* @bt_getprotobyname(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
