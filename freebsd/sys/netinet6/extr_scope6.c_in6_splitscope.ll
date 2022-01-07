; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_scope6.c_in6_splitscope.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_scope6.c_in6_splitscope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in6_splitscope(%struct.in6_addr* %0, %struct.in6_addr* %1, i32* %2) #0 {
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.in6_addr* %0, %struct.in6_addr** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %9 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %10 = bitcast %struct.in6_addr* %8 to i8*
  %11 = bitcast %struct.in6_addr* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 4, i1 false)
  %12 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %13 = call i32 @in6_getscope(%struct.in6_addr* %12)
  %14 = call i32 @ntohs(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %16 = call i32 @in6_clearscope(%struct.in6_addr* %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @in6_getscope(%struct.in6_addr*) #2

declare dso_local i32 @in6_clearscope(%struct.in6_addr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
