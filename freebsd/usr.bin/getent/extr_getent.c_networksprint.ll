; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/getent/extr_getent.c_networksprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/getent/extr_getent.c_networksprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netent = type { i32, i32, i32, i32 }
%struct.in_addr = type { i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"# unknown\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%-16s  %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netent*)* @networksprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @networksprint(%struct.netent* %0) #0 {
  %2 = alloca %struct.netent*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.in_addr, align 4
  %6 = alloca %struct.in_addr, align 4
  store %struct.netent* %0, %struct.netent** %2, align 8
  %7 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load %struct.netent*, %struct.netent** %2, align 8
  %12 = icmp ne %struct.netent* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.netent*, %struct.netent** %2, align 8
  %16 = getelementptr inbounds %struct.netent, %struct.netent* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @inet_makeaddr(i32 %17, i32 0)
  %19 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = bitcast %struct.in_addr* %5 to i8*
  %21 = bitcast %struct.in_addr* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = load %struct.netent*, %struct.netent** %2, align 8
  %23 = getelementptr inbounds %struct.netent, %struct.netent* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = trunc i64 %8 to i32
  %26 = call i32* @inet_ntop(i32 %24, %struct.in_addr* %5, i8* %10, i32 %25)
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = trunc i64 %8 to i32
  %30 = call i32 @strlcpy(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %1
  %32 = load %struct.netent*, %struct.netent** %2, align 8
  %33 = getelementptr inbounds %struct.netent, %struct.netent* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.netent*, %struct.netent** %2, align 8
  %36 = getelementptr inbounds %struct.netent, %struct.netent* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @printfmtstrings(i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %37, i8* %10)
  %39 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %39)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @inet_makeaddr(i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32* @inet_ntop(i32, %struct.in_addr*, i8*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @printfmtstrings(i32, i8*, i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
