; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_vhd.c_vhd_make_footer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_vhd.c_vhd_make_footer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhd_footer = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@VHD_FOOTER_COOKIE = common dso_local global i32 0, align 4
@VHD_FEATURES_RESERVED = common dso_local global i32 0, align 4
@VHD_VERSION = common dso_local global i32 0, align 4
@VHD_CREATOR_TOOL = common dso_local global i32 0, align 4
@VHD_CREATOR_VERSION = common dso_local global i32 0, align 4
@VHD_CREATOR_OS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhd_footer*, i32, i32, i32)* @vhd_make_footer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhd_make_footer(%struct.vhd_footer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vhd_footer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vhd_footer* %0, %struct.vhd_footer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.vhd_footer*, %struct.vhd_footer** %5, align 8
  %11 = call i32 @memset(%struct.vhd_footer* %10, i32 0, i32 56)
  %12 = load %struct.vhd_footer*, %struct.vhd_footer** %5, align 8
  %13 = getelementptr inbounds %struct.vhd_footer, %struct.vhd_footer* %12, i32 0, i32 13
  %14 = load i32, i32* @VHD_FOOTER_COOKIE, align 4
  %15 = call i32 @be64enc(i32* %13, i32 %14)
  %16 = load %struct.vhd_footer*, %struct.vhd_footer** %5, align 8
  %17 = getelementptr inbounds %struct.vhd_footer, %struct.vhd_footer* %16, i32 0, i32 12
  %18 = load i32, i32* @VHD_FEATURES_RESERVED, align 4
  %19 = call i32 @be32enc(i32* %17, i32 %18)
  %20 = load %struct.vhd_footer*, %struct.vhd_footer** %5, align 8
  %21 = getelementptr inbounds %struct.vhd_footer, %struct.vhd_footer* %20, i32 0, i32 11
  %22 = load i32, i32* @VHD_VERSION, align 4
  %23 = call i32 @be32enc(i32* %21, i32 %22)
  %24 = load %struct.vhd_footer*, %struct.vhd_footer** %5, align 8
  %25 = getelementptr inbounds %struct.vhd_footer, %struct.vhd_footer* %24, i32 0, i32 10
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @be64enc(i32* %25, i32 %26)
  %28 = load %struct.vhd_footer*, %struct.vhd_footer** %5, align 8
  %29 = getelementptr inbounds %struct.vhd_footer, %struct.vhd_footer* %28, i32 0, i32 9
  %30 = call i32 (...) @vhd_timestamp()
  %31 = call i32 @be32enc(i32* %29, i32 %30)
  %32 = load %struct.vhd_footer*, %struct.vhd_footer** %5, align 8
  %33 = getelementptr inbounds %struct.vhd_footer, %struct.vhd_footer* %32, i32 0, i32 8
  %34 = load i32, i32* @VHD_CREATOR_TOOL, align 4
  %35 = call i32 @be32enc(i32* %33, i32 %34)
  %36 = load %struct.vhd_footer*, %struct.vhd_footer** %5, align 8
  %37 = getelementptr inbounds %struct.vhd_footer, %struct.vhd_footer* %36, i32 0, i32 7
  %38 = load i32, i32* @VHD_CREATOR_VERSION, align 4
  %39 = call i32 @be32enc(i32* %37, i32 %38)
  %40 = load %struct.vhd_footer*, %struct.vhd_footer** %5, align 8
  %41 = getelementptr inbounds %struct.vhd_footer, %struct.vhd_footer* %40, i32 0, i32 6
  %42 = load i32, i32* @VHD_CREATOR_OS, align 4
  %43 = call i32 @be32enc(i32* %41, i32 %42)
  %44 = load %struct.vhd_footer*, %struct.vhd_footer** %5, align 8
  %45 = getelementptr inbounds %struct.vhd_footer, %struct.vhd_footer* %44, i32 0, i32 5
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @be64enc(i32* %45, i32 %46)
  %48 = load %struct.vhd_footer*, %struct.vhd_footer** %5, align 8
  %49 = getelementptr inbounds %struct.vhd_footer, %struct.vhd_footer* %48, i32 0, i32 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @be64enc(i32* %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.vhd_footer*, %struct.vhd_footer** %5, align 8
  %54 = getelementptr inbounds %struct.vhd_footer, %struct.vhd_footer* %53, i32 0, i32 3
  %55 = call i32 @vhd_geometry(i32 %52, %struct.TYPE_2__* %54)
  %56 = load %struct.vhd_footer*, %struct.vhd_footer** %5, align 8
  %57 = getelementptr inbounds %struct.vhd_footer, %struct.vhd_footer* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.vhd_footer*, %struct.vhd_footer** %5, align 8
  %60 = getelementptr inbounds %struct.vhd_footer, %struct.vhd_footer* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @be16enc(i32* %58, i32 %62)
  %64 = load %struct.vhd_footer*, %struct.vhd_footer** %5, align 8
  %65 = getelementptr inbounds %struct.vhd_footer, %struct.vhd_footer* %64, i32 0, i32 2
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @be32enc(i32* %65, i32 %66)
  %68 = call i32 @mkimg_uuid(i32* %9)
  %69 = load %struct.vhd_footer*, %struct.vhd_footer** %5, align 8
  %70 = getelementptr inbounds %struct.vhd_footer, %struct.vhd_footer* %69, i32 0, i32 1
  %71 = call i32 @mkimg_uuid_enc(i32* %70, i32* %9)
  %72 = load %struct.vhd_footer*, %struct.vhd_footer** %5, align 8
  %73 = getelementptr inbounds %struct.vhd_footer, %struct.vhd_footer* %72, i32 0, i32 0
  %74 = load %struct.vhd_footer*, %struct.vhd_footer** %5, align 8
  %75 = call i32 @vhd_checksum(%struct.vhd_footer* %74, i32 56)
  %76 = call i32 @be32enc(i32* %73, i32 %75)
  ret void
}

declare dso_local i32 @memset(%struct.vhd_footer*, i32, i32) #1

declare dso_local i32 @be64enc(i32*, i32) #1

declare dso_local i32 @be32enc(i32*, i32) #1

declare dso_local i32 @vhd_timestamp(...) #1

declare dso_local i32 @vhd_geometry(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @be16enc(i32*, i32) #1

declare dso_local i32 @mkimg_uuid(i32*) #1

declare dso_local i32 @mkimg_uuid_enc(i32*, i32*) #1

declare dso_local i32 @vhd_checksum(%struct.vhd_footer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
