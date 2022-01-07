; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/sendfile/extr_sendfile.c_init_th.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/sendfile/extr_sendfile.c_init_th.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_header = type { i32, i8*, i8*, i8*, i8* }

@TEST_MAGIC = common dso_local global i32 0, align 4
@path = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.test_header*, i32, i32, i32)* @init_th to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_th(%struct.test_header* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.test_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.test_header* %0, %struct.test_header** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.test_header*, %struct.test_header** %5, align 8
  %10 = call i32 @bzero(%struct.test_header* %9, i32 40)
  %11 = load i32, i32* @TEST_MAGIC, align 4
  %12 = call i8* @htonl(i32 %11)
  %13 = load %struct.test_header*, %struct.test_header** %5, align 8
  %14 = getelementptr inbounds %struct.test_header, %struct.test_header* %13, i32 0, i32 4
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i8* @htonl(i32 %15)
  %17 = load %struct.test_header*, %struct.test_header** %5, align 8
  %18 = getelementptr inbounds %struct.test_header, %struct.test_header* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i8* @htonl(i32 %19)
  %21 = load %struct.test_header*, %struct.test_header** %5, align 8
  %22 = getelementptr inbounds %struct.test_header, %struct.test_header* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i8* @htonl(i32 %23)
  %25 = load %struct.test_header*, %struct.test_header** %5, align 8
  %26 = getelementptr inbounds %struct.test_header, %struct.test_header* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @path, align 4
  %28 = load %struct.test_header*, %struct.test_header** %5, align 8
  %29 = getelementptr inbounds %struct.test_header, %struct.test_header* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @MD5FileChunk(i32 %27, i32 %30, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @bzero(%struct.test_header*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @MD5FileChunk(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
