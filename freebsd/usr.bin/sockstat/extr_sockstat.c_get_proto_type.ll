; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sockstat/extr_sockstat.c_get_proto_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sockstat/extr_sockstat.c_get_proto_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protoent = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"getprotobyname\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_proto_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_proto_type(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.protoent*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i64 @strlen(i8* %5)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call %struct.protoent* @getprotobyname(i8* %10)
  store %struct.protoent* %11, %struct.protoent** %4, align 8
  %12 = load %struct.protoent*, %struct.protoent** %4, align 8
  %13 = icmp eq %struct.protoent* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 @warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %20

16:                                               ; preds = %9
  %17 = load %struct.protoent*, %struct.protoent** %4, align 8
  %18 = getelementptr inbounds %struct.protoent, %struct.protoent* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %16, %14, %8
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.protoent* @getprotobyname(i8*) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
