; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_send.c_mail.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_send.c_mail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name = type { i32 }
%struct.header = type { i8*, i8*, i32*, %struct.name*, %struct.name*, %struct.name*, %struct.name* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mail(%struct.name* %0, %struct.name* %1, %struct.name* %2, %struct.name* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.name*, align 8
  %8 = alloca %struct.name*, align 8
  %9 = alloca %struct.name*, align 8
  %10 = alloca %struct.name*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.header, align 8
  store %struct.name* %0, %struct.name** %7, align 8
  store %struct.name* %1, %struct.name** %8, align 8
  store %struct.name* %2, %struct.name** %9, align 8
  store %struct.name* %3, %struct.name** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load %struct.name*, %struct.name** %7, align 8
  %15 = getelementptr inbounds %struct.header, %struct.header* %13, i32 0, i32 6
  store %struct.name* %14, %struct.name** %15, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = getelementptr inbounds %struct.header, %struct.header* %13, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = load %struct.name*, %struct.name** %8, align 8
  %19 = getelementptr inbounds %struct.header, %struct.header* %13, i32 0, i32 5
  store %struct.name* %18, %struct.name** %19, align 8
  %20 = load %struct.name*, %struct.name** %9, align 8
  %21 = getelementptr inbounds %struct.header, %struct.header* %13, i32 0, i32 4
  store %struct.name* %20, %struct.name** %21, align 8
  %22 = load %struct.name*, %struct.name** %10, align 8
  %23 = getelementptr inbounds %struct.header, %struct.header* %13, i32 0, i32 3
  store %struct.name* %22, %struct.name** %23, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = getelementptr inbounds %struct.header, %struct.header* %13, i32 0, i32 1
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.header, %struct.header* %13, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = call i32 @mail1(%struct.header* %13, i32 0)
  ret i32 0
}

declare dso_local i32 @mail1(%struct.header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
