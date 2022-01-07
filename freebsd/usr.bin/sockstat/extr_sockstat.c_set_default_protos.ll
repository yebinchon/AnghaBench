; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sockstat/extr_sockstat.c_set_default_protos.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sockstat/extr_sockstat.c_set_default_protos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protoent = type { i32 }

@default_numprotos = common dso_local global i64 0, align 8
@default_protos = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [19 x i8] c"getprotobyname: %s\00", align 1
@protos = common dso_local global i32* null, align 8
@numprotos = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @set_default_protos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_default_protos() #0 {
  %1 = alloca %struct.protoent*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @default_numprotos, align 8
  %5 = call i32 @init_protos(i64 %4)
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %29, %0
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @default_numprotos, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  %11 = load i8**, i8*** @default_protos, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds i8*, i8** %11, i64 %12
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %2, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call %struct.protoent* @getprotobyname(i8* %15)
  store %struct.protoent* %16, %struct.protoent** %1, align 8
  %17 = load %struct.protoent*, %struct.protoent** %1, align 8
  %18 = icmp eq %struct.protoent* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %10
  %23 = load %struct.protoent*, %struct.protoent** %1, align 8
  %24 = getelementptr inbounds %struct.protoent, %struct.protoent* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** @protos, align 8
  %27 = load i64, i64* %3, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32 %25, i32* %28, align 4
  br label %29

29:                                               ; preds = %22
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %3, align 8
  br label %6

32:                                               ; preds = %6
  %33 = load i64, i64* %3, align 8
  store i64 %33, i64* @numprotos, align 8
  %34 = load i64, i64* %3, align 8
  %35 = trunc i64 %34 to i32
  ret i32 %35
}

declare dso_local i32 @init_protos(i64) #1

declare dso_local %struct.protoent* @getprotobyname(i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
