; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_add_noid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_add_noid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber_element = type { i32 }
%struct.ber_oid = type { i32, i32 }

@BER_MAX_OID_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ber_element* @ber_add_noid(%struct.ber_element* %0, %struct.ber_oid* %1, i32 %2) #0 {
  %4 = alloca %struct.ber_element*, align 8
  %5 = alloca %struct.ber_element*, align 8
  %6 = alloca %struct.ber_oid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ber_oid, align 4
  store %struct.ber_element* %0, %struct.ber_element** %5, align 8
  store %struct.ber_oid* %1, %struct.ber_oid** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @BER_MAX_OID_LEN, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.ber_element* null, %struct.ber_element** %4, align 8
  br label %22

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = getelementptr inbounds %struct.ber_oid, %struct.ber_oid* %8, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.ber_oid*, %struct.ber_oid** %6, align 8
  %17 = getelementptr inbounds %struct.ber_oid, %struct.ber_oid* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.ber_oid, %struct.ber_oid* %8, i32 0, i32 1
  %19 = call i32 @bcopy(i32* %17, i32* %18, i32 4)
  %20 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %21 = call %struct.ber_element* @ber_add_oid(%struct.ber_element* %20, %struct.ber_oid* %8)
  store %struct.ber_element* %21, %struct.ber_element** %4, align 8
  br label %22

22:                                               ; preds = %13, %12
  %23 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  ret %struct.ber_element* %23
}

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local %struct.ber_element* @ber_add_oid(%struct.ber_element*, %struct.ber_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
