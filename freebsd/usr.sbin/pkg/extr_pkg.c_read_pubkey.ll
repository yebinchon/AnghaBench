; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_read_pubkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_read_pubkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pubkey = type { i32, i8* }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"lseek\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pubkey* (i32)* @read_pubkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pubkey* @read_pubkey(i32 %0) #0 {
  %2 = alloca %struct.pubkey*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pubkey*, align 8
  %5 = alloca %struct.sbuf*, align 8
  %6 = alloca [4096 x i8], align 16
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @lseek(i32 %8, i32 0, i32 0)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.pubkey* null, %struct.pubkey** %2, align 8
  br label %52

13:                                               ; preds = %1
  %14 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %14, %struct.sbuf** %5, align 8
  br label %15

15:                                               ; preds = %20, %13
  %16 = load i32, i32* %3, align 4
  %17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %18 = call i32 @read(i32 %16, i8* %17, i32 4096)
  store i32 %18, i32* %7, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %22 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @sbuf_bcat(%struct.sbuf* %21, i8* %22, i32 %23)
  br label %15

25:                                               ; preds = %15
  %26 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %27 = call i32 @sbuf_finish(%struct.sbuf* %26)
  %28 = call i8* @calloc(i32 1, i32 16)
  %29 = bitcast i8* %28 to %struct.pubkey*
  store %struct.pubkey* %29, %struct.pubkey** %4, align 8
  %30 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %31 = call i32 @sbuf_len(%struct.sbuf* %30)
  %32 = load %struct.pubkey*, %struct.pubkey** %4, align 8
  %33 = getelementptr inbounds %struct.pubkey, %struct.pubkey* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.pubkey*, %struct.pubkey** %4, align 8
  %35 = getelementptr inbounds %struct.pubkey, %struct.pubkey* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @calloc(i32 1, i32 %36)
  %38 = load %struct.pubkey*, %struct.pubkey** %4, align 8
  %39 = getelementptr inbounds %struct.pubkey, %struct.pubkey* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.pubkey*, %struct.pubkey** %4, align 8
  %41 = getelementptr inbounds %struct.pubkey, %struct.pubkey* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %44 = call i32 @sbuf_data(%struct.sbuf* %43)
  %45 = load %struct.pubkey*, %struct.pubkey** %4, align 8
  %46 = getelementptr inbounds %struct.pubkey, %struct.pubkey* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @memcpy(i8* %42, i32 %44, i32 %47)
  %49 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %50 = call i32 @sbuf_delete(%struct.sbuf* %49)
  %51 = load %struct.pubkey*, %struct.pubkey** %4, align 8
  store %struct.pubkey* %51, %struct.pubkey** %2, align 8
  br label %52

52:                                               ; preds = %25, %11
  %53 = load %struct.pubkey*, %struct.pubkey** %2, align 8
  ret %struct.pubkey* %53
}

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @sbuf_bcat(%struct.sbuf*, i8*, i32) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @sbuf_len(%struct.sbuf*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
