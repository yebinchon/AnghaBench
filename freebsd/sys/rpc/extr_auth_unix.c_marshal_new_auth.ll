; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_auth_unix.c_marshal_new_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_auth_unix.c_marshal_new_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.audata = type { i32, i32 }

@MAX_AUTH_BYTES = common dso_local global i32 0, align 4
@XDR_ENCODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"auth_none.c - Fatal marshalling problem\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @marshal_new_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @marshal_new_auth(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.audata*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32* %3, i32** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = call %struct.audata* @AUTH_PRIVATE(%struct.TYPE_4__* %6)
  store %struct.audata* %7, %struct.audata** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load %struct.audata*, %struct.audata** %5, align 8
  %10 = getelementptr inbounds %struct.audata, %struct.audata* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MAX_AUTH_BYTES, align 4
  %13 = load i32, i32* @XDR_ENCODE, align 4
  %14 = call i32 @xdrmem_create(i32* %8, i32 %11, i32 %12, i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = call i32 @xdr_opaque_auth(i32* %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @xdr_opaque_auth(i32* %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20, %1
  %27 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %33

28:                                               ; preds = %20
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @XDR_GETPOS(i32* %29)
  %31 = load %struct.audata*, %struct.audata** %5, align 8
  %32 = getelementptr inbounds %struct.audata, %struct.audata* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %26
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @XDR_DESTROY(i32* %34)
  ret void
}

declare dso_local %struct.audata* @AUTH_PRIVATE(%struct.TYPE_4__*) #1

declare dso_local i32 @xdrmem_create(i32*, i32, i32, i32) #1

declare dso_local i32 @xdr_opaque_auth(i32*, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @XDR_GETPOS(i32*) #1

declare dso_local i32 @XDR_DESTROY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
