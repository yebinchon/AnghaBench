#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int FUNC2 (void*,unsigned int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void * FUNC9(const char * filename)
{
	FILE * datafile = FUNC1(filename, "rb");
	unsigned int size;
	void * buffer = NULL;

	if(datafile == NULL)
	{
        FUNC7("\n\nERROR: %s couldn't be opened!\n\n",filename);
        return NULL;
    }

    FUNC4 (datafile , 0 , SEEK_END);
	size = FUNC5 (datafile);
	if(size == 0)
	{
        FUNC7("\n\nERROR: Size of %s is 0!\n\n",filename);
        FUNC0(datafile);
        return NULL;
    }
	FUNC8 (datafile);
	buffer = FUNC6(size);
	if(buffer == NULL)
	{
        FUNC7("\n\nERROR: Not enought memory to load %s!\n\n",filename);
        FUNC0(datafile);
        return NULL;
    }
	if(FUNC2(buffer,size,1,datafile) != 1)
	{
        FUNC7("\n\nERROR: Error while reading.\n\n");
        FUNC0(datafile);
		FUNC3(buffer);
        return NULL;
    }

	FUNC0(datafile);

	return buffer;
}